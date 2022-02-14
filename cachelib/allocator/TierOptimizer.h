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

#include <atomic>

#include "cachelib/allocator/Cache.h"
#include "cachelib/allocator/PoolOptimizeStrategy.h"
#include "cachelib/common/PeriodicWorker.h"

namespace facebook {
namespace cachelib {

// Periodic worker that optimizes pools by moving a slab from the victim pool to
// the receiver pool picked by the strategy.
class TierOptimizer : public PeriodicWorker {
 public:

  TierOptimizer(CacheBase& cache)
      : cache_(cache) {}

  ~TierOptimizer() override {};

 private:
  // cache's interface for optimization
  CacheBase& cache_;

  // implements the actual logic of running tryRebalancing and
  // updating the stats
  void work() final;
};
} // namespace cachelib
} // namespace facebook
