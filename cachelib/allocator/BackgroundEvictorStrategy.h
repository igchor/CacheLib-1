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

#include "cachelib/allocator/Cache.h"

namespace facebook {
namespace cachelib {


// Base class for background eviction strategy.
class BackgroundEvictorStrategy {

public:

  BackgroundEvictorStrategy(bool poll) : poll_{poll} {};

  virtual unsigned int calculateBatchSize(const CacheBase& cache,
                                       unsigned int tid,
                                       PoolId pid,
                                       ClassId cid ) = 0;

  virtual bool shouldEvict(const CacheBase& cache,
                                       unsigned int tid,
                                       PoolId pid,
                                       ClassId cid ) = 0;

  // if we should poll every n ms or wait for tasks in queue
  bool poll_{false};

};

} // namespace cachelib
} // namespace facebook
