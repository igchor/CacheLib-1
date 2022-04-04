/**
 * Autogenerated by Thrift for objects.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated @nocommit
 */
#include "objects_layouts.h"

namespace apache { namespace thrift { namespace frozen {

FROZEN_CTOR(::facebook::cachelib::serialization::SlabAllocatorObject,
  FROZEN_CTOR_FIELD_REQ(memorySize, 2)
  FROZEN_CTOR_FIELD_REQ(canAllocate, 4)
  FROZEN_CTOR_FIELD_REQ(memoryPoolSize, 5)
  FROZEN_CTOR_FIELD_REQ(slabSize, 7)
  FROZEN_CTOR_FIELD_REQ(minAllocSize, 8)
  FROZEN_CTOR_FIELD_REQ(nextSlabIdx, 9)
  FROZEN_CTOR_FIELD_REQ(freeSlabIdxs, 10)
  FROZEN_CTOR_FIELD(advisedSlabIdxs, 11))
FROZEN_MAXIMIZE(::facebook::cachelib::serialization::SlabAllocatorObject,
  FROZEN_MAXIMIZE_FIELD(memorySize)
  FROZEN_MAXIMIZE_FIELD(canAllocate)
  FROZEN_MAXIMIZE_FIELD(memoryPoolSize)
  FROZEN_MAXIMIZE_FIELD(slabSize)
  FROZEN_MAXIMIZE_FIELD(minAllocSize)
  FROZEN_MAXIMIZE_FIELD(nextSlabIdx)
  FROZEN_MAXIMIZE_FIELD(freeSlabIdxs)
  FROZEN_MAXIMIZE_FIELD(advisedSlabIdxs))
FROZEN_LAYOUT(::facebook::cachelib::serialization::SlabAllocatorObject,
  FROZEN_LAYOUT_FIELD_REQ(memorySize)
  FROZEN_LAYOUT_FIELD_REQ(canAllocate)
  FROZEN_LAYOUT_FIELD_REQ(memoryPoolSize)
  FROZEN_LAYOUT_FIELD_REQ(slabSize)
  FROZEN_LAYOUT_FIELD_REQ(minAllocSize)
  FROZEN_LAYOUT_FIELD_REQ(nextSlabIdx)
  FROZEN_LAYOUT_FIELD_REQ(freeSlabIdxs)
  FROZEN_LAYOUT_FIELD(advisedSlabIdxs))
FROZEN_FREEZE(::facebook::cachelib::serialization::SlabAllocatorObject,
  FROZEN_FREEZE_FIELD_REQ(memorySize)
  FROZEN_FREEZE_FIELD_REQ(canAllocate)
  FROZEN_FREEZE_FIELD_REQ(memoryPoolSize)
  FROZEN_FREEZE_FIELD_REQ(slabSize)
  FROZEN_FREEZE_FIELD_REQ(minAllocSize)
  FROZEN_FREEZE_FIELD_REQ(nextSlabIdx)
  FROZEN_FREEZE_FIELD_REQ(freeSlabIdxs)
  FROZEN_FREEZE_FIELD(advisedSlabIdxs))
FROZEN_THAW(::facebook::cachelib::serialization::SlabAllocatorObject,
  FROZEN_THAW_FIELD_REQ(memorySize)
  FROZEN_THAW_FIELD_REQ(canAllocate)
  FROZEN_THAW_FIELD_REQ(memoryPoolSize)
  FROZEN_THAW_FIELD_REQ(slabSize)
  FROZEN_THAW_FIELD_REQ(minAllocSize)
  FROZEN_THAW_FIELD_REQ(nextSlabIdx)
  FROZEN_THAW_FIELD_REQ(freeSlabIdxs)
  FROZEN_THAW_FIELD(advisedSlabIdxs))
FROZEN_DEBUG(::facebook::cachelib::serialization::SlabAllocatorObject,
  FROZEN_DEBUG_FIELD(memorySize)
  FROZEN_DEBUG_FIELD(canAllocate)
  FROZEN_DEBUG_FIELD(memoryPoolSize)
  FROZEN_DEBUG_FIELD(slabSize)
  FROZEN_DEBUG_FIELD(minAllocSize)
  FROZEN_DEBUG_FIELD(nextSlabIdx)
  FROZEN_DEBUG_FIELD(freeSlabIdxs)
  FROZEN_DEBUG_FIELD(advisedSlabIdxs))
FROZEN_CLEAR(::facebook::cachelib::serialization::SlabAllocatorObject,
  FROZEN_CLEAR_FIELD(memorySize)
  FROZEN_CLEAR_FIELD(canAllocate)
  FROZEN_CLEAR_FIELD(memoryPoolSize)
  FROZEN_CLEAR_FIELD(slabSize)
  FROZEN_CLEAR_FIELD(minAllocSize)
  FROZEN_CLEAR_FIELD(nextSlabIdx)
  FROZEN_CLEAR_FIELD(freeSlabIdxs)
  FROZEN_CLEAR_FIELD(advisedSlabIdxs))

FROZEN_CTOR(::facebook::cachelib::serialization::AllocationClassObject,
  FROZEN_CTOR_FIELD_REQ(classId, 1)
  FROZEN_CTOR_FIELD_REQ(allocationSize, 2)
  FROZEN_CTOR_FIELD_REQ(currOffset, 4)
  FROZEN_CTOR_FIELD_REQ(canAllocate, 8)
  FROZEN_CTOR_FIELD(freedAllocationsObject, 9)
  FROZEN_CTOR_FIELD_REQ(currSlabIdx, 10)
  FROZEN_CTOR_FIELD_REQ(allocatedSlabIdxs, 11)
  FROZEN_CTOR_FIELD_REQ(freeSlabIdxs, 12))
FROZEN_MAXIMIZE(::facebook::cachelib::serialization::AllocationClassObject,
  FROZEN_MAXIMIZE_FIELD(classId)
  FROZEN_MAXIMIZE_FIELD(allocationSize)
  FROZEN_MAXIMIZE_FIELD(currOffset)
  FROZEN_MAXIMIZE_FIELD(canAllocate)
  FROZEN_MAXIMIZE_FIELD(freedAllocationsObject)
  FROZEN_MAXIMIZE_FIELD(currSlabIdx)
  FROZEN_MAXIMIZE_FIELD(allocatedSlabIdxs)
  FROZEN_MAXIMIZE_FIELD(freeSlabIdxs))
FROZEN_LAYOUT(::facebook::cachelib::serialization::AllocationClassObject,
  FROZEN_LAYOUT_FIELD_REQ(classId)
  FROZEN_LAYOUT_FIELD_REQ(allocationSize)
  FROZEN_LAYOUT_FIELD_REQ(currOffset)
  FROZEN_LAYOUT_FIELD_REQ(canAllocate)
  FROZEN_LAYOUT_FIELD(freedAllocationsObject)
  FROZEN_LAYOUT_FIELD_REQ(currSlabIdx)
  FROZEN_LAYOUT_FIELD_REQ(allocatedSlabIdxs)
  FROZEN_LAYOUT_FIELD_REQ(freeSlabIdxs))
FROZEN_FREEZE(::facebook::cachelib::serialization::AllocationClassObject,
  FROZEN_FREEZE_FIELD_REQ(classId)
  FROZEN_FREEZE_FIELD_REQ(allocationSize)
  FROZEN_FREEZE_FIELD_REQ(currOffset)
  FROZEN_FREEZE_FIELD_REQ(canAllocate)
  FROZEN_FREEZE_FIELD(freedAllocationsObject)
  FROZEN_FREEZE_FIELD_REQ(currSlabIdx)
  FROZEN_FREEZE_FIELD_REQ(allocatedSlabIdxs)
  FROZEN_FREEZE_FIELD_REQ(freeSlabIdxs))
FROZEN_THAW(::facebook::cachelib::serialization::AllocationClassObject,
  FROZEN_THAW_FIELD_REQ(classId)
  FROZEN_THAW_FIELD_REQ(allocationSize)
  FROZEN_THAW_FIELD_REQ(currOffset)
  FROZEN_THAW_FIELD_REQ(canAllocate)
  FROZEN_THAW_FIELD(freedAllocationsObject)
  FROZEN_THAW_FIELD_REQ(currSlabIdx)
  FROZEN_THAW_FIELD_REQ(allocatedSlabIdxs)
  FROZEN_THAW_FIELD_REQ(freeSlabIdxs))
FROZEN_DEBUG(::facebook::cachelib::serialization::AllocationClassObject,
  FROZEN_DEBUG_FIELD(classId)
  FROZEN_DEBUG_FIELD(allocationSize)
  FROZEN_DEBUG_FIELD(currOffset)
  FROZEN_DEBUG_FIELD(canAllocate)
  FROZEN_DEBUG_FIELD(freedAllocationsObject)
  FROZEN_DEBUG_FIELD(currSlabIdx)
  FROZEN_DEBUG_FIELD(allocatedSlabIdxs)
  FROZEN_DEBUG_FIELD(freeSlabIdxs))
FROZEN_CLEAR(::facebook::cachelib::serialization::AllocationClassObject,
  FROZEN_CLEAR_FIELD(classId)
  FROZEN_CLEAR_FIELD(allocationSize)
  FROZEN_CLEAR_FIELD(currOffset)
  FROZEN_CLEAR_FIELD(canAllocate)
  FROZEN_CLEAR_FIELD(freedAllocationsObject)
  FROZEN_CLEAR_FIELD(currSlabIdx)
  FROZEN_CLEAR_FIELD(allocatedSlabIdxs)
  FROZEN_CLEAR_FIELD(freeSlabIdxs))

FROZEN_CTOR(::facebook::cachelib::serialization::MemoryPoolObject,
  FROZEN_CTOR_FIELD_REQ(id, 1)
  FROZEN_CTOR_FIELD_REQ(maxSize, 2)
  FROZEN_CTOR_FIELD_REQ(currSlabAllocSize, 3)
  FROZEN_CTOR_FIELD_REQ(currAllocSize, 4)
  FROZEN_CTOR_FIELD_REQ(acSizes, 6)
  FROZEN_CTOR_FIELD_REQ(ac, 7)
  FROZEN_CTOR_FIELD(numSlabResize, 8)
  FROZEN_CTOR_FIELD(numSlabRebalance, 9)
  FROZEN_CTOR_FIELD_REQ(freeSlabIdxs, 10)
  FROZEN_CTOR_FIELD(numSlabsAdvised, 11))
FROZEN_MAXIMIZE(::facebook::cachelib::serialization::MemoryPoolObject,
  FROZEN_MAXIMIZE_FIELD(id)
  FROZEN_MAXIMIZE_FIELD(maxSize)
  FROZEN_MAXIMIZE_FIELD(currSlabAllocSize)
  FROZEN_MAXIMIZE_FIELD(currAllocSize)
  FROZEN_MAXIMIZE_FIELD(acSizes)
  FROZEN_MAXIMIZE_FIELD(ac)
  FROZEN_MAXIMIZE_FIELD(numSlabResize)
  FROZEN_MAXIMIZE_FIELD(numSlabRebalance)
  FROZEN_MAXIMIZE_FIELD(freeSlabIdxs)
  FROZEN_MAXIMIZE_FIELD(numSlabsAdvised))
FROZEN_LAYOUT(::facebook::cachelib::serialization::MemoryPoolObject,
  FROZEN_LAYOUT_FIELD_REQ(id)
  FROZEN_LAYOUT_FIELD_REQ(maxSize)
  FROZEN_LAYOUT_FIELD_REQ(currSlabAllocSize)
  FROZEN_LAYOUT_FIELD_REQ(currAllocSize)
  FROZEN_LAYOUT_FIELD_REQ(acSizes)
  FROZEN_LAYOUT_FIELD_REQ(ac)
  FROZEN_LAYOUT_FIELD(numSlabResize)
  FROZEN_LAYOUT_FIELD(numSlabRebalance)
  FROZEN_LAYOUT_FIELD_REQ(freeSlabIdxs)
  FROZEN_LAYOUT_FIELD(numSlabsAdvised))
FROZEN_FREEZE(::facebook::cachelib::serialization::MemoryPoolObject,
  FROZEN_FREEZE_FIELD_REQ(id)
  FROZEN_FREEZE_FIELD_REQ(maxSize)
  FROZEN_FREEZE_FIELD_REQ(currSlabAllocSize)
  FROZEN_FREEZE_FIELD_REQ(currAllocSize)
  FROZEN_FREEZE_FIELD_REQ(acSizes)
  FROZEN_FREEZE_FIELD_REQ(ac)
  FROZEN_FREEZE_FIELD(numSlabResize)
  FROZEN_FREEZE_FIELD(numSlabRebalance)
  FROZEN_FREEZE_FIELD_REQ(freeSlabIdxs)
  FROZEN_FREEZE_FIELD(numSlabsAdvised))
FROZEN_THAW(::facebook::cachelib::serialization::MemoryPoolObject,
  FROZEN_THAW_FIELD_REQ(id)
  FROZEN_THAW_FIELD_REQ(maxSize)
  FROZEN_THAW_FIELD_REQ(currSlabAllocSize)
  FROZEN_THAW_FIELD_REQ(currAllocSize)
  FROZEN_THAW_FIELD_REQ(acSizes)
  FROZEN_THAW_FIELD_REQ(ac)
  FROZEN_THAW_FIELD(numSlabResize)
  FROZEN_THAW_FIELD(numSlabRebalance)
  FROZEN_THAW_FIELD_REQ(freeSlabIdxs)
  FROZEN_THAW_FIELD(numSlabsAdvised))
FROZEN_DEBUG(::facebook::cachelib::serialization::MemoryPoolObject,
  FROZEN_DEBUG_FIELD(id)
  FROZEN_DEBUG_FIELD(maxSize)
  FROZEN_DEBUG_FIELD(currSlabAllocSize)
  FROZEN_DEBUG_FIELD(currAllocSize)
  FROZEN_DEBUG_FIELD(acSizes)
  FROZEN_DEBUG_FIELD(ac)
  FROZEN_DEBUG_FIELD(numSlabResize)
  FROZEN_DEBUG_FIELD(numSlabRebalance)
  FROZEN_DEBUG_FIELD(freeSlabIdxs)
  FROZEN_DEBUG_FIELD(numSlabsAdvised))
FROZEN_CLEAR(::facebook::cachelib::serialization::MemoryPoolObject,
  FROZEN_CLEAR_FIELD(id)
  FROZEN_CLEAR_FIELD(maxSize)
  FROZEN_CLEAR_FIELD(currSlabAllocSize)
  FROZEN_CLEAR_FIELD(currAllocSize)
  FROZEN_CLEAR_FIELD(acSizes)
  FROZEN_CLEAR_FIELD(ac)
  FROZEN_CLEAR_FIELD(numSlabResize)
  FROZEN_CLEAR_FIELD(numSlabRebalance)
  FROZEN_CLEAR_FIELD(freeSlabIdxs)
  FROZEN_CLEAR_FIELD(numSlabsAdvised))

FROZEN_CTOR(::facebook::cachelib::serialization::MemoryPoolManagerObject,
  FROZEN_CTOR_FIELD(pools, 1)
  FROZEN_CTOR_FIELD(poolsByName, 2)
  FROZEN_CTOR_FIELD(nextPoolId, 3))
FROZEN_MAXIMIZE(::facebook::cachelib::serialization::MemoryPoolManagerObject,
  FROZEN_MAXIMIZE_FIELD(pools)
  FROZEN_MAXIMIZE_FIELD(poolsByName)
  FROZEN_MAXIMIZE_FIELD(nextPoolId))
FROZEN_LAYOUT(::facebook::cachelib::serialization::MemoryPoolManagerObject,
  FROZEN_LAYOUT_FIELD(pools)
  FROZEN_LAYOUT_FIELD(poolsByName)
  FROZEN_LAYOUT_FIELD(nextPoolId))
FROZEN_FREEZE(::facebook::cachelib::serialization::MemoryPoolManagerObject,
  FROZEN_FREEZE_FIELD(pools)
  FROZEN_FREEZE_FIELD(poolsByName)
  FROZEN_FREEZE_FIELD(nextPoolId))
FROZEN_THAW(::facebook::cachelib::serialization::MemoryPoolManagerObject,
  FROZEN_THAW_FIELD(pools)
  FROZEN_THAW_FIELD(poolsByName)
  FROZEN_THAW_FIELD(nextPoolId))
FROZEN_DEBUG(::facebook::cachelib::serialization::MemoryPoolManagerObject,
  FROZEN_DEBUG_FIELD(pools)
  FROZEN_DEBUG_FIELD(poolsByName)
  FROZEN_DEBUG_FIELD(nextPoolId))
FROZEN_CLEAR(::facebook::cachelib::serialization::MemoryPoolManagerObject,
  FROZEN_CLEAR_FIELD(pools)
  FROZEN_CLEAR_FIELD(poolsByName)
  FROZEN_CLEAR_FIELD(nextPoolId))

FROZEN_CTOR(::facebook::cachelib::serialization::MemoryAllocatorObject,
  FROZEN_CTOR_FIELD_REQ(allocSizes, 1)
  FROZEN_CTOR_FIELD_REQ(enableZeroedSlabAllocs, 4)
  FROZEN_CTOR_FIELD(lockMemory, 5)
  FROZEN_CTOR_FIELD_REQ(slabAllocator, 2)
  FROZEN_CTOR_FIELD_REQ(memoryPoolManager, 3))
FROZEN_MAXIMIZE(::facebook::cachelib::serialization::MemoryAllocatorObject,
  FROZEN_MAXIMIZE_FIELD(allocSizes)
  FROZEN_MAXIMIZE_FIELD(enableZeroedSlabAllocs)
  FROZEN_MAXIMIZE_FIELD(lockMemory)
  FROZEN_MAXIMIZE_FIELD(slabAllocator)
  FROZEN_MAXIMIZE_FIELD(memoryPoolManager))
FROZEN_LAYOUT(::facebook::cachelib::serialization::MemoryAllocatorObject,
  FROZEN_LAYOUT_FIELD_REQ(allocSizes)
  FROZEN_LAYOUT_FIELD_REQ(enableZeroedSlabAllocs)
  FROZEN_LAYOUT_FIELD(lockMemory)
  FROZEN_LAYOUT_FIELD_REQ(slabAllocator)
  FROZEN_LAYOUT_FIELD_REQ(memoryPoolManager))
FROZEN_FREEZE(::facebook::cachelib::serialization::MemoryAllocatorObject,
  FROZEN_FREEZE_FIELD_REQ(allocSizes)
  FROZEN_FREEZE_FIELD_REQ(enableZeroedSlabAllocs)
  FROZEN_FREEZE_FIELD(lockMemory)
  FROZEN_FREEZE_FIELD_REQ(slabAllocator)
  FROZEN_FREEZE_FIELD_REQ(memoryPoolManager))
FROZEN_THAW(::facebook::cachelib::serialization::MemoryAllocatorObject,
  FROZEN_THAW_FIELD_REQ(allocSizes)
  FROZEN_THAW_FIELD_REQ(enableZeroedSlabAllocs)
  FROZEN_THAW_FIELD(lockMemory)
  FROZEN_THAW_FIELD_REQ(slabAllocator)
  FROZEN_THAW_FIELD_REQ(memoryPoolManager))
FROZEN_DEBUG(::facebook::cachelib::serialization::MemoryAllocatorObject,
  FROZEN_DEBUG_FIELD(allocSizes)
  FROZEN_DEBUG_FIELD(enableZeroedSlabAllocs)
  FROZEN_DEBUG_FIELD(lockMemory)
  FROZEN_DEBUG_FIELD(slabAllocator)
  FROZEN_DEBUG_FIELD(memoryPoolManager))
FROZEN_CLEAR(::facebook::cachelib::serialization::MemoryAllocatorObject,
  FROZEN_CLEAR_FIELD(allocSizes)
  FROZEN_CLEAR_FIELD(enableZeroedSlabAllocs)
  FROZEN_CLEAR_FIELD(lockMemory)
  FROZEN_CLEAR_FIELD(slabAllocator)
  FROZEN_CLEAR_FIELD(memoryPoolManager))


}}} // apache::thrift::frozen
