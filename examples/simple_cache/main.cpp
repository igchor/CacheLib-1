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

#include <iostream>
#include "folly/futures/Future.h"
#include <folly/executors/ThreadedExecutor.h>
#include <folly/executors/CPUThreadPoolExecutor.h>

int main(int argc, char** argv) {
  // folly::ThreadedExecutor executor;
  std::unique_ptr<folly::Executor> exc = std::unique_ptr<folly::Executor>(new folly::CPUThreadPoolExecutor(8));
  
  auto sf = folly::via(exc.get(), [](){
    std::cout << "test" << std::endl;
  }).then([](folly::Try<folly::Unit>&&){
    std::cout << "some computation" << std::endl;
    return true;
  }).thenValue([](bool ret){
    std::cout << "some other computation" << std::endl;
  });

  auto x = folly::makeFuture(false);

  // auto ret = std::move(sf).get();

  // std::cout << ret << std::endl;
}
