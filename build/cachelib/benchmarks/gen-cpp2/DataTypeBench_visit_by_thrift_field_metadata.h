/**
 * Autogenerated by Thrift for DataTypeBench.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated @nocommit
 */
#pragma once

#include <thrift/lib/cpp2/visitation/visit_by_thrift_field_metadata.h>
#include "DataTypeBench_metadata.h"

namespace apache {
namespace thrift {
namespace detail {

template <>
struct VisitByFieldId<::facebook::cachelib::datatypebench::StdMap> {
  template <typename F, typename T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, int32_t fieldId, FOLLY_MAYBE_UNUSED T&& t) const {
    switch (fieldId) {
    case 1:
      return f(0, static_cast<T&&>(t).m_ref());
    default:
      throwInvalidThriftId(fieldId, "::facebook::cachelib::datatypebench::StdMap");
    }
  }
};

template <>
struct VisitByFieldId<::facebook::cachelib::datatypebench::StdUnorderedMap> {
  template <typename F, typename T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, int32_t fieldId, FOLLY_MAYBE_UNUSED T&& t) const {
    switch (fieldId) {
    case 1:
      return f(0, static_cast<T&&>(t).m_ref());
    default:
      throwInvalidThriftId(fieldId, "::facebook::cachelib::datatypebench::StdUnorderedMap");
    }
  }
};
} // namespace detail
} // namespace thrift
} // namespace apache
