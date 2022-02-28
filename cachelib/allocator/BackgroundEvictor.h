/*
 * Copyright (c) Intel and its affiliates.
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

#include <gtest/gtest_prod.h>
#include <folly/concurrency/UnboundedQueue.h>

#include "cachelib/allocator/CacheStats.h"
#include "cachelib/common/PeriodicWorker.h"
#include "cachelib/allocator/BackgroundEvictorStrategy.h"
#include "cachelib/common/AtomicCounter.h"


namespace facebook {
namespace cachelib {

// wrapper that exposes the private APIs of CacheType that are specifically
// needed for the eviction.
template <typename C>
struct BackgroundEvictorAPIWrapper {

  static size_t traverseAndEvictItems(C& cache,
          unsigned int tid, unsigned int pid, unsigned int cid, size_t batch) {
    return cache.traverseAndEvictItems(tid,pid,cid,batch);
  }
};

struct BackgroundEvictorStats {
  // items evicted
  AtomicCounter numEvictedItems{0};

  // traversals
  AtomicCounter numTraversals{0};

  // total class size
  AtomicCounter totalClasses{0};

  // item eviction size
  AtomicCounter evictionSize{0};
};

// Periodic worker that evicts items from tiers in batches
// The primary aim is to reduce insertion times for new items in the
// cache
template <typename CacheT>
class BackgroundEvictor : public PeriodicWorker {
 public:
  using Cache = CacheT;
  // @param cache               the cache interface
  // @param target_free         the target amount of memory to keep free in 
  //                            this tier
  // @param tier id             memory tier to perform eviction on 
  BackgroundEvictor(Cache& cache,
                    std::shared_ptr<BackgroundEvictorStrategy> strategy,
                    unsigned int tid);

  ~BackgroundEvictor() override;
  
  BackgroundEvictionStats getStats() const noexcept;
  std::map<uint32_t,uint64_t> getClassStats() const noexcept;

 private:
   std::map<uint32_t,uint64_t> evictions_per_class_;

  // cache allocator's interface for evicting
  
  using Item = typename Cache::Item;
  
  Cache& cache_;
  std::shared_ptr<BackgroundEvictorStrategy> strategy_;
  unsigned int tid_;

  // implements the actual logic of running the background evictor
  void work() override final;
  void checkAndRun(PoolId pid);

  BackgroundEvictorStats stats;
};
} // namespace cachelib
} // namespace facebook

#include "cachelib/allocator/BackgroundEvictor-inl.h"
