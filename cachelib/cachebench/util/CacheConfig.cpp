/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
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

#include "cachelib/cachebench/util/CacheConfig.h"

#include "cachelib/allocator/HitsPerSlabStrategy.h"
#include "cachelib/allocator/LruTailAgeStrategy.h"
#include "cachelib/allocator/RandomStrategy.h"
#include "cachelib/allocator/FreeThresholdStrategy.h"
#include "cachelib/allocator/PromotionStrategy.h"

namespace facebook {
namespace cachelib {
namespace cachebench {
CacheConfig::CacheConfig(const folly::dynamic& configJson) {
  JSONSetVal(configJson, allocator);
  JSONSetVal(configJson, cacheDir);
  JSONSetVal(configJson, cacheSizeMB);
  JSONSetVal(configJson, poolRebalanceIntervalSec);
  JSONSetVal(configJson, backgroundEvictorIntervalMilSec);
  JSONSetVal(configJson, backgroundPromoterIntervalMilSec);
  JSONSetVal(configJson, backgroundEvictorStrategy);
  JSONSetVal(configJson, moveOnSlabRelease);
  JSONSetVal(configJson, rebalanceStrategy);
  JSONSetVal(configJson, rebalanceMinSlabs);
  JSONSetVal(configJson, rebalanceDiffRatio);

  JSONSetVal(configJson, htBucketPower);
  JSONSetVal(configJson, htLockPower);

  JSONSetVal(configJson, lruRefreshSec);
  JSONSetVal(configJson, lruRefreshRatio);
  JSONSetVal(configJson, mmReconfigureIntervalSecs);
  JSONSetVal(configJson, lruUpdateOnWrite);
  JSONSetVal(configJson, lruUpdateOnRead);
  JSONSetVal(configJson, tryLockUpdate);
  JSONSetVal(configJson, lruIpSpec);

  JSONSetVal(configJson, lru2qHotPct);
  JSONSetVal(configJson, lru2qColdPct);

  JSONSetVal(configJson, allocFactor);
  JSONSetVal(configJson, maxAllocSize);
  JSONSetVal(configJson, minAllocSize);
  JSONSetVal(configJson, allocSizes);

  JSONSetVal(configJson, numPools);
  JSONSetVal(configJson, poolSizes);

  JSONSetVal(configJson, nvmCacheSizeMB);
  JSONSetVal(configJson, nvmCacheMetadataSizeMB);
  JSONSetVal(configJson, nvmCachePaths);
  JSONSetVal(configJson, writeAmpDeviceList);

  JSONSetVal(configJson, navyBlockSize);
  JSONSetVal(configJson, navyRegionSizeMB);
  JSONSetVal(configJson, navySegmentedFifoSegmentRatio);
  JSONSetVal(configJson, navyReqOrderShardsPower);
  JSONSetVal(configJson, navyBigHashSizePct);
  JSONSetVal(configJson, navyBigHashBucketSize);
  JSONSetVal(configJson, navyBloomFilterPerBucketSize);
  JSONSetVal(configJson, navySmallItemMaxSize);
  JSONSetVal(configJson, navyParcelMemoryMB);
  JSONSetVal(configJson, navyHitsReinsertionThreshold);
  JSONSetVal(configJson, navyProbabilityReinsertionThreshold);
  JSONSetVal(configJson, navyReaderThreads);
  JSONSetVal(configJson, navyWriterThreads);
  JSONSetVal(configJson, navyCleanRegions);
  JSONSetVal(configJson, navyAdmissionWriteRateMB);
  JSONSetVal(configJson, navyMaxConcurrentInserts);
  JSONSetVal(configJson, navyDataChecksum);
  JSONSetVal(configJson, navyNumInmemBuffers);
  JSONSetVal(configJson, truncateItemToOriginalAllocSizeInNvm);
  JSONSetVal(configJson, navyEncryption);
  JSONSetVal(configJson, deviceMaxWriteSize);

  JSONSetVal(configJson, memoryOnlyTTL);

  JSONSetVal(configJson, useTraceTimeStamp);
  JSONSetVal(configJson, printNvmCounters);
  JSONSetVal(configJson, tickerSynchingSeconds);
  JSONSetVal(configJson, enableItemDestructorCheck);
  JSONSetVal(configJson, enableItemDestructor);
  JSONSetVal(configJson, nvmAdmissionRetentionTimeThreshold);

  JSONSetVal(configJson, customConfigJson);


  JSONSetVal(configJson, lowEvictionAcWatermark);
  JSONSetVal(configJson, highEvictionAcWatermark);
  JSONSetVal(configJson, minAcAllocationWatermark);
  JSONSetVal(configJson, maxAcAllocationWatermark);
  JSONSetVal(configJson, numDuplicateElements);
  JSONSetVal(configJson, syncPromotion);
  JSONSetVal(configJson, evictorThreads);
  JSONSetVal(configJson, promoterThreads);

  JSONSetVal(configJson, promotionAcWatermark);
  JSONSetVal(configJson, persistedCacheDir);
  JSONSetVal(configJson, usePosixShm);
  JSONSetVal(configJson, maxEvictionBatch);
  JSONSetVal(configJson, maxPromotionBatch);
  JSONSetVal(configJson, minEvictionBatch);
  JSONSetVal(configJson, minPromotionBatch);
  JSONSetVal(configJson, maxEvictionPromotionHotness);

  if (configJson.count("memoryTiers")) {
    for (auto& it : configJson["memoryTiers"]) {
      memoryTierConfigs.push_back(MemoryTierConfig(it).getMemoryTierCacheConfig());
    }
  }
  // if you added new fields to the configuration, update the JSONSetVal
  // to make them available for the json configs and increment the size
  // below
  checkCorrectSize<CacheConfig, 928>();

  if (numPools != poolSizes.size()) {
    throw std::invalid_argument(folly::sformat(
        "number of pools must be the same as the pool size distribution. "
        "numPools: {}, poolSizes.size(): {}",
        numPools, poolSizes.size()));
  }
}

std::shared_ptr<RebalanceStrategy> CacheConfig::getRebalanceStrategy() const {
  if (poolRebalanceIntervalSec == 0) {
    return nullptr;
  }

  if (rebalanceStrategy == "tail-age") {
    auto config = LruTailAgeStrategy::Config{
        rebalanceDiffRatio, static_cast<unsigned int>(rebalanceMinSlabs)};
    return std::make_shared<LruTailAgeStrategy>(config);
  } else if (rebalanceStrategy == "hits") {
    auto config = HitsPerSlabStrategy::Config{
        rebalanceDiffRatio, static_cast<unsigned int>(rebalanceMinSlabs)};
    return std::make_shared<HitsPerSlabStrategy>(config);
  } else {
    // use random strategy to just trigger some slab release.
    return std::make_shared<RandomStrategy>(
        RandomStrategy::Config{static_cast<unsigned int>(rebalanceMinSlabs)});
  }
}


MemoryTierConfig::MemoryTierConfig(const folly::dynamic& configJson) {
  JSONSetVal(configJson, file);
  JSONSetVal(configJson, ratio);
  JSONSetVal(configJson, memBindNodes);
  checkCorrectSize<MemoryTierConfig, 72>();
}

std::shared_ptr<BackgroundMoverStrategy> CacheConfig::getBackgroundEvictorStrategy() const {
  if (backgroundEvictorIntervalMilSec == 0) {
    return nullptr;
  }
  return std::make_shared<FreeThresholdStrategy>(lowEvictionAcWatermark, highEvictionAcWatermark, maxEvictionBatch, minEvictionBatch);
}

std::shared_ptr<BackgroundMoverStrategy> CacheConfig::getBackgroundPromoterStrategy() const {
  if (backgroundPromoterIntervalMilSec == 0) {
    return nullptr;
  }
  return std::make_shared<PromotionStrategy>(promotionAcWatermark, maxPromotionBatch, minPromotionBatch);
}

static bool starts_with() {return true;}

std::vector<size_t> MemoryTierConfig::parseNumaNodes() {
  std::vector<size_t> numaNodes;

  std::vector<folly::StringPiece> tokens;
  folly::split(",", memBindNodes, tokens, true /*ignore empty*/);
  for(const auto &token : tokens) {
    if(token.startsWith("!")) {
      throw std::invalid_argument(folly::sformat(
        "invalid NUMA nodes binding in memory tier config: {} "
        "inverse !N or !N-N is not supported "
        "nodes may be specified as N,N,N or N-N or N,N-N or N-N,N-N and so forth.",
        token));
    }
    else if(token.startsWith("+")) {
      throw std::invalid_argument(folly::sformat(
        "invalid NUMA nodes binding in memory tier config: {} "
        "relative nodes are not supported. "
        "nodes may be specified as N,N,N or N-N or N,N-N or N-N,N-N and so forth.",
        token));
    }
    else if (token.contains("-")) {
      size_t begin, end;
      if(folly::split("-", token, begin, end) && begin < end) {
        while(begin <=end) {
          numaNodes.push_back(begin++);
        }
      } else {
        throw std::invalid_argument(folly::sformat(
        "invalid NUMA nodes binding in memory tier config: {} "
        "Invalid range format. "
        "nodes may be specified as N,N,N or N-N or N,N-N or N-N,N-N and so forth.",
        token));
      }
    }
    else {
      numaNodes.push_back(folly::to<size_t>(token));
    }
  }

  return numaNodes;
}

} // namespace cachebench
} // namespace cachelib
} // namespace facebook
