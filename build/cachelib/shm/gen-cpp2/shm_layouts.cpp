/**
 * Autogenerated by Thrift for shm.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated @nocommit
 */
#include "shm_layouts.h"

namespace apache { namespace thrift { namespace frozen {

FROZEN_CTOR(::facebook::cachelib::serialization::ShmTypeObject,
  FROZEN_CTOR_FIELD_REQ(path, 1)
  FROZEN_CTOR_FIELD_REQ(usePosix, 2))
FROZEN_MAXIMIZE(::facebook::cachelib::serialization::ShmTypeObject,
  FROZEN_MAXIMIZE_FIELD(path)
  FROZEN_MAXIMIZE_FIELD(usePosix))
FROZEN_LAYOUT(::facebook::cachelib::serialization::ShmTypeObject,
  FROZEN_LAYOUT_FIELD_REQ(path)
  FROZEN_LAYOUT_FIELD_REQ(usePosix))
FROZEN_FREEZE(::facebook::cachelib::serialization::ShmTypeObject,
  FROZEN_FREEZE_FIELD_REQ(path)
  FROZEN_FREEZE_FIELD_REQ(usePosix))
FROZEN_THAW(::facebook::cachelib::serialization::ShmTypeObject,
  FROZEN_THAW_FIELD_REQ(path)
  FROZEN_THAW_FIELD_REQ(usePosix))
FROZEN_DEBUG(::facebook::cachelib::serialization::ShmTypeObject,
  FROZEN_DEBUG_FIELD(path)
  FROZEN_DEBUG_FIELD(usePosix))
FROZEN_CLEAR(::facebook::cachelib::serialization::ShmTypeObject,
  FROZEN_CLEAR_FIELD(path)
  FROZEN_CLEAR_FIELD(usePosix))

FROZEN_CTOR(::facebook::cachelib::serialization::ShmManagerObject,
  FROZEN_CTOR_FIELD_REQ(shmVal, 1)
  FROZEN_CTOR_FIELD_REQ(nameToKeyMap, 3))
FROZEN_MAXIMIZE(::facebook::cachelib::serialization::ShmManagerObject,
  FROZEN_MAXIMIZE_FIELD(shmVal)
  FROZEN_MAXIMIZE_FIELD(nameToKeyMap))
FROZEN_LAYOUT(::facebook::cachelib::serialization::ShmManagerObject,
  FROZEN_LAYOUT_FIELD_REQ(shmVal)
  FROZEN_LAYOUT_FIELD_REQ(nameToKeyMap))
FROZEN_FREEZE(::facebook::cachelib::serialization::ShmManagerObject,
  FROZEN_FREEZE_FIELD_REQ(shmVal)
  FROZEN_FREEZE_FIELD_REQ(nameToKeyMap))
FROZEN_THAW(::facebook::cachelib::serialization::ShmManagerObject,
  FROZEN_THAW_FIELD_REQ(shmVal)
  FROZEN_THAW_FIELD_REQ(nameToKeyMap))
FROZEN_DEBUG(::facebook::cachelib::serialization::ShmManagerObject,
  FROZEN_DEBUG_FIELD(shmVal)
  FROZEN_DEBUG_FIELD(nameToKeyMap))
FROZEN_CLEAR(::facebook::cachelib::serialization::ShmManagerObject,
  FROZEN_CLEAR_FIELD(shmVal)
  FROZEN_CLEAR_FIELD(nameToKeyMap))


}}} // apache::thrift::frozen
