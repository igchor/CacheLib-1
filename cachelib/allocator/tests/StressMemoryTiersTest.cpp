/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
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
#include "cachelib/allocator/tests/MemoryTiersTest.h"

namespace facebook {
namespace cachelib {
namespace tests {

using LruAllocatorConfig = CacheAllocatorConfig<LruAllocator>;
using StringDataKeyValue = std::pair<std::string, std::string>;
using StringDataKeyValues = std::vector<StringDataKeyValue>;

using LruMemoryTiersTest = AllocatorTest<LruAllocator>;

std::map<std::string, size_t> generateAndInsert(
    LruAllocator::Config& cfg,
    Range& keyRange,
    const std::pair<size_t, size_t>& dataSize) {
  using Item = typename LruAllocator::Item;
  using RemoveCbData = typename LruAllocator::RemoveCbData;
  size_t itemsInserted = 0, itemsFound = 0, itemsEvicted = 0;
  std::set<std::string> movedKeys;
  std::set<std::string> removedKeys;
  std::unique_ptr<LruAllocator> alloc;

  size_t bytesAllocatedBeforeMove = 0;
  size_t numItemsBeforeMove = 0;

  auto moveCb = [&](const Item& oldItem, Item& newItem, Item*) {
    std::memcpy(newItem.getMemory(), oldItem.getMemory(),
                oldItem.getSize());
    movedKeys.insert(oldItem.getKey().str());
  };

  auto removeCb = [&](const RemoveCbData& data) {
    removedKeys.insert(data.item.getKey().str());
  };

  cfg.setRemoveCallback(removeCb);
  cfg.enableMovingOnSlabRelease(moveCb);

  alloc = std::unique_ptr<LruAllocator>(
    new LruAllocator(LruAllocator::SharedMemNew, cfg));

  const size_t numBytes = alloc->getCacheMemoryStats().cacheSize;
  auto poolId = alloc->addPool("my pool", numBytes);

  Context context(*alloc, poolId, dataSize);
  itemsInserted = ParallelFunction(InsertGeneratedDataFunction(context))(keyRange);

  itemsFound = ParallelFunction(LookupGeneratedKeysFunction(context))(keyRange);

  /* itemsFound = lookUpGeneratedKeys(keyRange, dataSize, *alloc); */
  EXPECT_EQ(lookUpKeys(removedKeys, *alloc), 0);
  itemsEvicted = removedKeys.size();

  EXPECT_EQ(keyRange.second - keyRange.first, itemsInserted);
  EXPECT_EQ(itemsFound + itemsEvicted, itemsInserted);
  EXPECT_LE(itemsFound, itemsInserted);
  EXPECT_EQ(itemsEvicted, removedKeys.size());

  std::map<std::string, size_t> stats = {
    {"b. Total cache size", numBytes},
    {"c. Key size (0 - size is not fixed)", dataSize.first},
    {"d. Value size (0 - size is not fixed)", dataSize.second},
    {"e. Number of inserted items", itemsInserted},
    {"f. Number of found items", itemsFound},
    {"g. Number of evicted items", itemsEvicted},
    {"h. Number of moved items", movedKeys.size()},
    {"i. Number of removed items", removedKeys.size()}
    //{"j. Number of inserted items before first move", numItemsBeforeMove},
    //{"k. Bytes allocated before first move", bytesAllocatedBeforeMove}
  };

  return stats;
}

TEST_F(LruMemoryTiersTest, TestStressInserts) {
  const size_t N =  /* 8 * */ 2 * minSlabsNumber(2) * Slab::kSize, M = /* 8 * */ 20000, nKey = 2 * 12, nVal = 1 * KB - nKey;
  std::vector<std::pair<std::string, size_t>> sortedStats = {};
  std::vector<std::tuple<size_t, size_t, size_t, size_t, std::string>>
      stress_params = {
          // params: total cache size, number of items to insert, size of keys,
          // size of values, description
          /* std::make_tuple(N * MB, M * 1000, 0, nVal,
                          "Cache is undersaturated, just a few data items"),
          std::make_tuple(N * MB, M * 108298, 0, nVal,
                          "Data fills the entire 50Mb of DRAM-only cache"),
          std::make_tuple(N * MB, M * 180000, 0, nVal,
                          "Too much data for the cache size"), */
          std::make_tuple(N, M * 1, nKey, nVal,
                          "Cache is undersaturated, just a few data items")};

  auto printStats = [&](std::map<std::string, size_t>& data) {
    for (const auto& [key, value] : data) {
        std::cout << value << "; ";
    }
    std::cout << std::endl;
  };

  for (auto params : stress_params) {
    Range keyRange = std::make_pair(0, std::get<1>(params));
    std::pair dataSize =
      std::make_pair(std::get<2>(params), std::get<3>(params));
    LruAllocator::Config config;
    config.setCacheSize(std::get<0>(params))
           .enableCachePersistence(
                folly::sformat("/tmp/multi-tier-test/{}", ::getpid()))
           .usePosixForShm();
    std::map<std::string, size_t> dramOnlyCacheStats;
    dramOnlyCacheStats =
          generateAndInsert(config, keyRange, dataSize);
    
    if (sortedStats.empty()) {
      sortedStats = std::vector<std::pair<std::string, size_t>>(dramOnlyCacheStats.begin(), dramOnlyCacheStats.end());
      std::sort(sortedStats.begin(), sortedStats.end(), [](const auto & lhs, const auto & rhs) {
          return lhs.first < rhs.first;
        });
      for(auto& header: sortedStats) {
        std::cout << header.first.substr(header.first.find(" ") + 1) << ";";
      }
      std::cout << std::endl;
    }

    printStats(dramOnlyCacheStats);
  }
}
} // namespace tests
} // namespace cachelib
} // namespace facebook
