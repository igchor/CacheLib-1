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

#pragma once

#include <any>

#include "cachelib/allocator/CacheAllocator.h"
#include "cachelib/allocator/RebalanceStrategy.h"
#include "cachelib/allocator/BackgroundEvictorStrategy.h"
#include "cachelib/cachebench/util/JSONConfig.h"
#include "cachelib/common/Ticker.h"
#include "cachelib/navy/common/Device.h"

namespace facebook {
namespace cachelib {
namespace cachebench {
// Monitor that is set up after CacheAllocator is created and
// destroyed before CacheAllocator is shut down.
class CacheMonitor {
 public:
  virtual ~CacheMonitor() = default;
};

class CacheMonitorFactory {
 public:
  virtual ~CacheMonitorFactory() = default;
  virtual std::unique_ptr<CacheMonitor> create(LruAllocator& cache) = 0;
  virtual std::unique_ptr<CacheMonitor> create(Lru2QAllocator& cache) = 0;
};

struct MemoryTierConfig : public JSONConfig {
  MemoryTierConfig() {}

  explicit MemoryTierConfig(const folly::dynamic& configJson);
  MemoryTierCacheConfig getMemoryTierCacheConfig() {
    MemoryTierCacheConfig config = memoryTierCacheConfigFromSource();
    config.setSize(size).setRatio(ratio);
    config.markUsefulChance = markUsefulChance;
    config.lruInsertionPointSpec = lruInsertionPointSpec;
    return config;
  }

  std::string file{""};
  size_t ratio{0};
  size_t size{0};

  double markUsefulChance{100.0}; // call mark useful only with this
  uint32_t lruInsertionPointSpec{0};

private:
  MemoryTierCacheConfig memoryTierCacheConfigFromSource() {
    if (file.empty()) {
      return MemoryTierCacheConfig::fromShm();
    } else {
      return MemoryTierCacheConfig::fromFile(file);
    }
  }
};

struct CacheConfig : public JSONConfig {
  // by defaullt, lru allocator. can be set to LRU-2Q.
  std::string allocator{"LRU"};

  uint64_t cacheSizeMB{0};
  uint64_t poolRebalanceIntervalSec{0};
  uint64_t backgroundEvictorIntervalMilSec{0};
  std::string rebalanceStrategy;
  std::string backgroundEvictorStrategy;
  uint64_t rebalanceMinSlabs{1};
  double rebalanceDiffRatio{0.25};
  bool moveOnSlabRelease{false};

  uint64_t htBucketPower{22}; // buckets in hash table
  uint64_t htLockPower{20};   // locks in hash table

  // Hash table config for chained items
  uint64_t chainedItemHtBucketPower{22};
  uint64_t chainedItemHtLockPower{20};

  // time to sleep between MMContainer reconfigures
  uint64_t mmReconfigureIntervalSecs{0};

  // LRU and 2Q params
  uint64_t lruRefreshSec{60};
  double lruRefreshRatio{0.1};
  bool lruUpdateOnWrite{false};
  bool lruUpdateOnRead{true};
  bool tryLockUpdate{false};

  // LRU param
  uint64_t lruIpSpec{0};

  // 2Q params
  size_t lru2qHotPct{20};
  size_t lru2qColdPct{20};

  double allocFactor{1.5};
  // maximum alloc size generated using the alloc factor above.
  size_t maxAllocSize{1024 * 1024};
  size_t minAllocSize{64};

  std::vector<uint64_t> allocSizes{};

  // These specify the number of pools and how keys will
  // be distributed among the pools
  uint64_t numPools{1};
  std::vector<double> poolSizes{1.0};

  // uses a user specified file for caching. If the path specified is a file
  // or raw device, then navy uses that directly. If the path specificied is a
  // directory, we will create a file inside with appropriate size . If a
  // directory is specified by user, cachebench cleans it up at exit. If it is
  // a file, cachebench preserves the file upon exit. User can also specify a
  // number of devices. Cachelib's flash cache engine (Navy) will use them in a
  // raid0 fashion
  std::vector<std::string> nvmCachePaths{};

  // size of the NVM for caching. When more than one device path is
  // specified, this is the size per device path. When this is non-zero and
  // nvmCachePaths is empty, an in-memory block device is used.
  uint64_t nvmCacheSizeMB{0};

  // list of device identifiers for the device path that can be used to
  // monitor the physical write amplification. If empty, physical write amp is
  // not computed. This can be specified as nvme1n1 or nvme1n2 etc, confirming
  // to be a physical device identifier;
  std::vector<std::string> writeAmpDeviceList{};

  // Navy specific: block size in bytes
  uint64_t navyBlockSize{512};

  // Navy specific: region size in MB
  uint64_t navyRegionSizeMB{16};

  // If non-empty, configures Navy to use FIFO instead of LRU. If there are
  // more than one values provided, it enables segmented fifo with the
  // appropriate ratios.
  std::vector<unsigned int> navySegmentedFifoSegmentRatio{};

  // size classes for large objects in Navy that exceed the
  // @navySmallItemMaxSize. Must be multiples of @navyBlockSize unless
  // in-mem buffer is enabled. If empty, navy will use stack allocation mode.
  std::vector<uint32_t> navySizeClasses{512,      2 * 512,  3 * 512,
                                        4 * 512,  6 * 512,  8 * 512,
                                        12 * 512, 16 * 512, 32 * 512};

  // Number of shards expressed as power of two for request ordering in
  // Navy. If 0, the default configuration of Navy(20) is used.
  uint64_t navyReqOrderShardsPower{21};

  // percentage of the nvm cache size that is dedicated for objects that are
  // smaller than @navySmallItemMaxSize. This size is dedicated for BigHash
  // engine.
  uint64_t navyBigHashSizePct = 50;

  // bucket size for BigHash. This controls the write amplification for small
  // objects in Navy. Every small object write performs a RMW for a bucket.
  uint64_t navyBigHashBucketSize = 4096;

  // Big Hash bloom filter size in bytes per bucket above.
  uint64_t navyBloomFilterPerBucketSize = 8;

  // Small Item Max Size determines the upper bound of an item size that
  // can be admitted into Big Hash engine.
  uint64_t navySmallItemMaxSize = 2048;

  // total memory limit for in-flight insertion operations for NVM. Once this is
  // reached, requests will be rejected until the memory usage gets under
  // the limit.
  uint64_t navyParcelMemoryMB = 1024;

  // use a hits based reinsertion policy with navy
  uint64_t navyHitsReinsertionThreshold{0};

  // use a probability based reinsertion policy with navy
  uint64_t navyProbabilityReinsertionThreshold{0};

  // number of asynchronous worker thread for navy read operation.
  uint32_t navyReaderThreads{32};

  // number of asynchronous worker thread for navy write operation,
  uint32_t navyWriterThreads{32};

  // buffer of clean regions to be maintained free to ensure writes
  // into navy don't queue behind a reclaim of region.
  uint32_t navyCleanRegions{1};

  // disabled when value is 0
  uint32_t navyAdmissionWriteRateMB{0};

  // maximum pending inserts before rejecting new inserts.
  uint32_t navyMaxConcurrentInserts{1000000};

  // enables data checksuming for navy. metadata checksum is enabled by
  // default
  bool navyDataChecksum{true};

  // by default, only store the size requested by the user into nvm cache
  bool truncateItemToOriginalAllocSizeInNvm = false;

  // by default, we do not encrypt content in Navy
  bool navyEncryption = false;

  // number of navy in-memory buffers
  uint32_t navyNumInmemBuffers{0};

  // By default Navy will only flush to device at most 1MB, if larger than 1MB,
  // Navy will split it into multiple IOs.
  uint32_t deviceMaxWriteSize{1024 * 1024};

  // Don't write to flash if cache TTL is smaller than this value.
  // Not used when its value is 0.  In seconds.
  uint32_t memoryOnlyTTL{0};

  // Directory for the cache to enable persistence across restarts.
  std::string persistedCacheDir{""};

  bool usePosixShm{false};

  std::vector<MemoryTierCacheConfig> memoryTierConfigs{};

  // If enabled, we will use nvm admission policy tuned for ML use cases
  std::string mlNvmAdmissionPolicy{""};

  // This must be non-empty if @mlNvmAdmissionPolicy is true. We specify
  // a location for the ML model using this argument.
  std::string mlNvmAdmissionPolicyLocation{""};

  // The target recall of the ML model.
  // TODO: use an opaque config file path and put that path location here if we
  // need to expose more configs related to ML model.
  double mlNvmAdmissionTargetRecall{0.9};

  // If enabled, we will use the timestamps from the trace file in the ticker
  // so that the cachebench will observe time based on timestamps from the trace
  // instead of the system time.
  bool useTraceTimeStamp{false};

  // If enabled, when printing CacheStats, also print the NvmCounters (could be
  // spammy).
  bool printNvmCounters{false};

  // When set to positive, CacheBench use this as TimeStampTickers bucket ticks
  // For example, a value of 3600 means the threads will
  // always be processing traces from the same hour at any time.
  // When set to 0, TimeStampTicker is not used.
  uint64_t tickerSynchingSeconds{0};

  //
  // Options below are not to be populated with JSON
  //

  // User is free to implement any encryption that conforms to this API
  // If supplied, all payloads into Navy will be encrypted.
  std::function<std::shared_ptr<navy::DeviceEncryptor>()> createEncryptor;

  // User will implement a function that returns NvmAdmissionPolicy.
  // The reason we return as a std::any is because the interface is a virtual
  // template class, and the actual type is determined by @allocator in
  // this config.
  std::function<std::any(const CacheConfig&)> nvmAdmissionPolicyFactory;

  // User can implement a structure that polls stats from CacheAllocator
  // and saves the states to a backend/file/place they prefer.
  std::shared_ptr<CacheMonitorFactory> cacheMonitorFactory;

  // shared pointer of the ticker to support time stamp based cachebench
  // simulation. Stressor uses this to pass the ticker into the cache.
  std::shared_ptr<cachelib::Ticker> ticker;

  // Check if ItemDestructor is triggered properly for every item.
  // Be careful that this will keep a record of every item allocated,
  // and won't be dropped after item is removed from cache, it the size
  // is not bounded by the size of cache.
  bool enableItemDestructorCheck{false};
  // enable the ItemDestructor feature, but not check correctness,
  // this verifies whether the feature affects throughputs.
  bool enableItemDestructor{false};

  double evictionSlabWatermark{100.0}; // trigger slab eviction when this percentage of slabs are allocated
  double lowEvictionAcWatermark{98.0};   // trigger eviction when this percentage of allocation class is occupied
  double highEvictionAcWatermark{95.0}; // stop eviction when this percentage of allocation class is occupied

  double lowSlabAllocationWatermak{101.0};  // try to insert to different tier if this much slabs are allocated
  double lowAcAllocationWatermark{101.0};   // try to insert to different tier if this much memory is allocated in ac
  double highAcAllocationWatermark{101.0};  // always insert to different tier if this much memory is allocated in ac
  uint64_t sizeThresholdPolicy{0};          // try to insert to different tier if element is bigger than
  double defaultTierChancePercentage{50.0}; // if previous policies do not aplly, select tier at random with this probability of selecting first one
  // TODO: default could be based on ratio

  double numDuplicateElements{0.0}; // inclusivness of the cache
  double syncPromotion{0.0}; // can promotion be done synchronously in user thread

  uint64_t evictionHotnessThreshold{200};

  explicit CacheConfig(const folly::dynamic& configJson);

  CacheConfig() {}

  std::shared_ptr<RebalanceStrategy> getRebalanceStrategy() const;
  std::shared_ptr<BackgroundEvictorStrategy> getBackgroundEvictorStrategy() const;
};
} // namespace cachebench
} // namespace cachelib
} // namespace facebook
