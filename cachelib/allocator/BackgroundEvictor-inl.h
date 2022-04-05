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



namespace facebook {
namespace cachelib {


template <typename CacheT>
BackgroundEvictor<CacheT>::BackgroundEvictor(Cache& cache,
                               std::shared_ptr<BackgroundEvictorStrategy> strategy,
                               unsigned int tid)
    : cache_(cache),
      strategy_(strategy),
      tid_(tid) {
}

template <typename CacheT>
BackgroundEvictor<CacheT>::~BackgroundEvictor() { stop(std::chrono::seconds(0)); }

template <typename CacheT>
void BackgroundEvictor<CacheT>::work() {
   try {
     for (const auto pid : cache_.getRegularPoolIds()) {
     auto stats = cache_.getPoolStats(pid);
     auto candidates = std::vector<unsigned>(stats.getClassIds().begin(), stats.getClassIds().end());
     const auto& acStats = stats.mpStats.acStats;
     std::sort(candidates.begin(), candidates.end(), [&](const ClassId& a, const ClassId& b) {
       return acStats.at(a).getTotalFreeMemory() <
             acStats.at(b).getTotalFreeMemory();
     });

      size_t evicted = 0;
      for (auto const cid : candidates) {
        if (double(acStats.at(cid).getTotalFreeMemory()) / acStats.at(cid).getTotalFreeMemory() > strategy_->ratio())
          return;

        if (cache_.evictFrom(0, pid, cid, strategy_->batch()))
          evicted++;
       }
      numEvictedItems_.fetch_add(evicted, std::memory_order_relaxed);
     }
   } catch (const std::exception& ex) {
     XLOGF(ERR, "Rebalancing interrupted due to exception: {}", ex.what());
   }
}

template <typename CacheT>
BackgroundEvictorStats BackgroundEvictor<CacheT>::getStats() const noexcept {
  BackgroundEvictorStats stats;
  stats.numEvictedItems = numEvictedItems_.load(std::memory_order_relaxed);
  stats.numTraversals = runCount_.load(std::memory_order_relaxed);
  stats.numEvictedItemsFromSchedule = numEvictedItemsFromSchedule_.load(std::memory_order_relaxed);
  return stats;
}

} // namespace cachelib
} // namespace facebook
