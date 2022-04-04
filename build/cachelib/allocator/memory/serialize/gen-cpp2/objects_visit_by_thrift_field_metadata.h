/**
 * Autogenerated by Thrift for objects.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated @nocommit
 */
#pragma once

#include <thrift/lib/cpp2/visitation/visit_by_thrift_field_metadata.h>
#include "objects_metadata.h"

namespace apache {
namespace thrift {
namespace detail {

template <>
struct VisitByFieldId<::facebook::cachelib::serialization::SlabAllocatorObject> {
  template <typename F, typename T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, int32_t fieldId, FOLLY_MAYBE_UNUSED T&& t) const {
    switch (fieldId) {
    case 2:
      return f(0, static_cast<T&&>(t).memorySize_ref());
    case 4:
      return f(1, static_cast<T&&>(t).canAllocate_ref());
    case 5:
      return f(2, static_cast<T&&>(t).memoryPoolSize_ref());
    case 7:
      return f(3, static_cast<T&&>(t).slabSize_ref());
    case 8:
      return f(4, static_cast<T&&>(t).minAllocSize_ref());
    case 9:
      return f(5, static_cast<T&&>(t).nextSlabIdx_ref());
    case 10:
      return f(6, static_cast<T&&>(t).freeSlabIdxs_ref());
    case 11:
      return f(7, static_cast<T&&>(t).advisedSlabIdxs_ref());
    default:
      throwInvalidThriftId(fieldId, "::facebook::cachelib::serialization::SlabAllocatorObject");
    }
  }
};

template <>
struct VisitByFieldId<::facebook::cachelib::serialization::AllocationClassObject> {
  template <typename F, typename T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, int32_t fieldId, FOLLY_MAYBE_UNUSED T&& t) const {
    switch (fieldId) {
    case 1:
      return f(0, static_cast<T&&>(t).classId_ref());
    case 2:
      return f(1, static_cast<T&&>(t).allocationSize_ref());
    case 4:
      return f(2, static_cast<T&&>(t).currOffset_ref());
    case 8:
      return f(3, static_cast<T&&>(t).canAllocate_ref());
    case 9:
      return f(4, static_cast<T&&>(t).freedAllocationsObject_ref());
    case 10:
      return f(5, static_cast<T&&>(t).currSlabIdx_ref());
    case 11:
      return f(6, static_cast<T&&>(t).allocatedSlabIdxs_ref());
    case 12:
      return f(7, static_cast<T&&>(t).freeSlabIdxs_ref());
    default:
      throwInvalidThriftId(fieldId, "::facebook::cachelib::serialization::AllocationClassObject");
    }
  }
};

template <>
struct VisitByFieldId<::facebook::cachelib::serialization::MemoryPoolObject> {
  template <typename F, typename T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, int32_t fieldId, FOLLY_MAYBE_UNUSED T&& t) const {
    switch (fieldId) {
    case 1:
      return f(0, static_cast<T&&>(t).id_ref());
    case 2:
      return f(1, static_cast<T&&>(t).maxSize_ref());
    case 3:
      return f(2, static_cast<T&&>(t).currSlabAllocSize_ref());
    case 4:
      return f(3, static_cast<T&&>(t).currAllocSize_ref());
    case 6:
      return f(4, static_cast<T&&>(t).acSizes_ref());
    case 7:
      return f(5, static_cast<T&&>(t).ac_ref());
    case 8:
      return f(6, static_cast<T&&>(t).numSlabResize_ref());
    case 9:
      return f(7, static_cast<T&&>(t).numSlabRebalance_ref());
    case 10:
      return f(8, static_cast<T&&>(t).freeSlabIdxs_ref());
    case 11:
      return f(9, static_cast<T&&>(t).numSlabsAdvised_ref());
    default:
      throwInvalidThriftId(fieldId, "::facebook::cachelib::serialization::MemoryPoolObject");
    }
  }
};

template <>
struct VisitByFieldId<::facebook::cachelib::serialization::MemoryPoolManagerObject> {
  template <typename F, typename T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, int32_t fieldId, FOLLY_MAYBE_UNUSED T&& t) const {
    switch (fieldId) {
    case 1:
      return f(0, static_cast<T&&>(t).pools_ref());
    case 2:
      return f(1, static_cast<T&&>(t).poolsByName_ref());
    case 3:
      return f(2, static_cast<T&&>(t).nextPoolId_ref());
    default:
      throwInvalidThriftId(fieldId, "::facebook::cachelib::serialization::MemoryPoolManagerObject");
    }
  }
};

template <>
struct VisitByFieldId<::facebook::cachelib::serialization::MemoryAllocatorObject> {
  template <typename F, typename T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, int32_t fieldId, FOLLY_MAYBE_UNUSED T&& t) const {
    switch (fieldId) {
    case 1:
      return f(0, static_cast<T&&>(t).allocSizes_ref());
    case 4:
      return f(1, static_cast<T&&>(t).enableZeroedSlabAllocs_ref());
    case 5:
      return f(2, static_cast<T&&>(t).lockMemory_ref());
    case 2:
      return f(3, static_cast<T&&>(t).slabAllocator_ref());
    case 3:
      return f(4, static_cast<T&&>(t).memoryPoolManager_ref());
    default:
      throwInvalidThriftId(fieldId, "::facebook::cachelib::serialization::MemoryAllocatorObject");
    }
  }
};
} // namespace detail
} // namespace thrift
} // namespace apache
