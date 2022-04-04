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

#include "cachelib/allocator/PoolRebalancer.h"

#include <folly/logging/xlog.h>

#include <stdexcept>
#include <thread>

namespace facebook {
namespace cachelib {

PoolRebalancer::PoolRebalancer(CacheBase& cache,
                               std::shared_ptr<RebalanceStrategy> strategy,
                               unsigned int freeAllocThreshold)
    : cache_(cache),
      defaultStrategy_(std::move(strategy)),
      freeAllocThreshold_(freeAllocThreshold) {
  if (!defaultStrategy_) {
    throw std::invalid_argument("The default rebalance strategy is not set.");
  }
}

PoolRebalancer::~PoolRebalancer() { stop(std::chrono::seconds(0)); }

void PoolRebalancer::work() {
  try {
    for (const auto pid : cache_.getRegularPoolIds()) {
      auto stats = cache_.getPoolStats(pid);
      auto candidates = std::vector<unsigned>(stats.getClassIds().begin(), stats.getClassIds().end());
      std::sort(candidates.begin(), candidates.end(), [&](const ClassId& a, const ClassId& b) {
        const auto& acStats = stats.mpStats.acStats;
        return acStats.at(a).getTotalFreeMemory() <
              acStats.at(b).getTotalFreeMemory();
      });

      size_t evicted = 0;
      for (auto const cid : candidates) {
        if (cache_.evictFrom(0, pid, cid))
          evicted++;
      }
      XLOG(WARN, "Evicted in BG: {}", std::to_string(evicted));
    }
    // XXX: 
  } catch (const std::exception& ex) {
    XLOGF(ERR, "Rebalancing interrupted due to exception: {}", ex.what());
  }
}

} // namespace cachelib
} // namespace facebook
