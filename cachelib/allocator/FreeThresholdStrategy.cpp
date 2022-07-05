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

#include "cachelib/allocator/FreeThresholdStrategy.h"

#include <folly/logging/xlog.h>

namespace facebook {
namespace cachelib {



FreeThresholdStrategy::FreeThresholdStrategy(double lowEvictionAcWatermark, double highEvictionAcWatermark, uint64_t evictionHotnessThreshold)
    : lowEvictionAcWatermark(lowEvictionAcWatermark), highEvictionAcWatermark(highEvictionAcWatermark), evictionHotnessThreshold(evictionHotnessThreshold) {}

size_t FreeThresholdStrategy::calculateBatchSize(const CacheBase& cache,
                                       unsigned int tid,
                                       PoolId pid,
                                       ClassId cid,
                                       size_t allocSize,
                                       size_t acMemorySize) {
  if (cache.slabsFreePercentage(tid) > 0.0)
    return 0;

  auto acFree = cache.acFreePercentage(tid, pid, cid);
  if (acFree >= highEvictionAcWatermark)
    return 0;

  auto toFreeMemPercent = highEvictionAcWatermark - acFree;
  auto toFreeItems = static_cast<size_t>(toFreeMemPercent * acMemorySize / allocSize);

  return toFreeItems;
}

} // namespace cachelib
} // namespace facebook
