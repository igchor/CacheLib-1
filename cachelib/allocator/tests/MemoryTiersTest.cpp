/*
 * Copyright (c) Intel Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <numeric>
#include "cachelib/allocator/CacheAllocator.h"
#include "cachelib/allocator/tests/TestBase.h"

namespace facebook {
namespace cachelib {
namespace tests {


using LruAllocatorConfig = CacheAllocatorConfig<LruAllocator>;
using LruMemoryTierConfigs = LruAllocatorConfig::MemoryTierConfigs;
using Strings = std::vector<std::string>;
using Ratios = std::vector<size_t>;

const size_t defaultTotalCacheSize{1 * 1024 * 1024 * 1024};
const std::string defaultCacheDir{"/var/metadataDir"};
const std::string defaultPmemPath{"/dev/shm/p1"};
const std::string defaultDaxPath{"/dev/dax0.0"};

template <typename Allocator>
class MemoryTiersTest: public AllocatorTest<Allocator> {
  public:
    void basicCheck(
        LruAllocatorConfig& actualConfig,
        const Strings& expectedPaths = {defaultPmemPath},
        size_t expectedTotalCacheSize = defaultTotalCacheSize,
        const std::string& expectedCacheDir = defaultCacheDir) {
      EXPECT_EQ(actualConfig.getCacheSize(), expectedTotalCacheSize);
      EXPECT_EQ(actualConfig.getMemoryTierConfigs().size(), expectedPaths.size());
      EXPECT_EQ(actualConfig.getCacheDir(), expectedCacheDir);
      auto configs = actualConfig.getMemoryTierConfigs();

      size_t sum_ratios = std::accumulate(configs.begin(), configs.end(), 0,
          [](const size_t i, const MemoryTierCacheConfig& config) { return i + config.getRatio();});
      size_t sum_sizes = std::accumulate(configs.begin(), configs.end(), 0,
          [&](const size_t i, const MemoryTierCacheConfig& config) { return i + config.calculateTierSize(actualConfig.getCacheSize(), sum_ratios);});
      

      size_t partition_size = 0;
      if (sum_ratios) {
        partition_size = actualConfig.getCacheSize() / sum_ratios;
        /* Sum of sizes can be lower due to rounding down to partition_size. */
        EXPECT_GE(sum_sizes, expectedTotalCacheSize - partition_size);
      }

      for(auto i = 0; i < configs.size(); ++i) {
        auto tierSize = configs[i].calculateTierSize(actualConfig.getCacheSize(), sum_ratios);
        auto &opt = std::get<FileShmSegmentOpts>(configs[i].getShmTypeOpts());
        EXPECT_EQ(opt.path, expectedPaths[i]);
        EXPECT_GT(tierSize, 0);
        if (configs[i].getRatio() && (i < configs.size() - 1)) {
          EXPECT_EQ(tierSize, partition_size * configs[i].getRatio());
        }
      }
    }

    LruAllocatorConfig createTestCacheConfig(
        const Strings& tierPaths = {defaultPmemPath},
        const Ratios& tierRatios = {1},
        bool setPosixForShm = true,
        size_t cacheSize = defaultTotalCacheSize,
        const std::string& cacheDir = defaultCacheDir) {
      EXPECT_EQ(tierPaths.size(), tierRatios.size());
      LruAllocatorConfig cfg;
      cfg.setCacheSize(cacheSize)
         .enableCachePersistence(cacheDir);

      if (setPosixForShm)
         cfg.usePosixForShm();

      LruMemoryTierConfigs tierConfigs;
      tierConfigs.reserve(tierPaths.size());
      for(auto i = 0; i < tierPaths.size(); ++i) {
        tierConfigs.push_back(MemoryTierCacheConfig::fromFile(tierPaths[i])
                              .setRatio(tierRatios[i]));
      }
      cfg.configureMemoryTiers(tierConfigs);
      return cfg;
    }
};

using LruMemoryTiersTest = MemoryTiersTest<LruAllocator>;

TEST_F(LruMemoryTiersTest, TestValid1TierPmemRatioConfig) {
  LruAllocatorConfig cfg = createTestCacheConfig({defaultPmemPath});
  basicCheck(cfg);
}

TEST_F(LruMemoryTiersTest, TestValid1TierDaxRatioConfig) {
  LruAllocatorConfig cfg = createTestCacheConfig({defaultDaxPath});
  basicCheck(cfg, {defaultDaxPath});
}

TEST_F(LruMemoryTiersTest, TestValid2TierDaxPmemConfig) {
  LruAllocatorConfig cfg = createTestCacheConfig({defaultDaxPath, defaultPmemPath},
                                                 {1, 1});
  basicCheck(cfg, {defaultDaxPath, defaultPmemPath});
}

TEST_F(LruMemoryTiersTest, TestValid2TierDaxPmemRatioConfig) {
  LruAllocatorConfig cfg = createTestCacheConfig({defaultDaxPath, defaultPmemPath},
                                                 {5, 2});
  basicCheck(cfg, {defaultDaxPath, defaultPmemPath});
}

TEST_F(LruMemoryTiersTest, TestInvalid2TierConfigPosixShmNotSet) {
  LruAllocatorConfig cfg = createTestCacheConfig({defaultDaxPath, defaultPmemPath},
                                                 {1, 1},
                                                  /* setPosixShm */ false);
}

TEST_F(LruMemoryTiersTest, TestInvalid2TierConfigNumberOfPartitionsTooLarge) {
  EXPECT_THROW(createTestCacheConfig({defaultDaxPath, defaultPmemPath},
                                     {defaultTotalCacheSize, 1}).validate(),
               std::invalid_argument);
}

TEST_F(LruMemoryTiersTest, TestInvalid2TierConfigRatiosCacheSizeNotSet) {
  EXPECT_THROW(createTestCacheConfig({defaultDaxPath, defaultPmemPath},
                                     {1, 1},
                                     /* setPosixShm */ true, /* cacheSize */ 0).validate(),
               std::invalid_argument);
}

} // namespace tests
} // namespace cachelib
} // namespace facebook
