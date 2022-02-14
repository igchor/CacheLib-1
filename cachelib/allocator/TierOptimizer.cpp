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

#include <atomic>

#include "TierOptimizer.h"

namespace facebook {
namespace cachelib {

  // implements the actual logic of running tryRebalancing and
  // updating the stats
  void TierOptimizer::work() {
      for (const auto pid : cache_.getRegularPoolIds()) {
        const auto stats = cache_.getPoolStats(pid);
        const auto& candidates = stats.mpStats.classIds;
        const auto ret = *std::min_element(
            candidates.begin(), candidates.end(), [&](ClassId a, ClassId b) {
              return stats.mpStats.acStats.at(a).totalSlabs() <
                    stats.mpStats.acStats.at(b).totalSlabs();
            });

        cache_.freeTopMemory(pid, ret);
      }
  }

} // namespace cachelib
} // namespace facebook
