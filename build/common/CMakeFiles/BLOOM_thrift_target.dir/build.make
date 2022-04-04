# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /opt/workspace/cachelib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/workspace/build

# Utility rule file for BLOOM_thrift_target.

# Include any custom commands dependencies for this target.
include common/CMakeFiles/BLOOM_thrift_target.dir/compiler_depend.make

# Include the progress variables for this target.
include common/CMakeFiles/BLOOM_thrift_target.dir/progress.make

common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_constants.h
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_data.cpp
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_data.h
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_metadata.cpp
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_metadata.h
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_types.cpp
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_types_custom_protocol.h
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_types.h
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_types.tcc
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_layouts.h
common/CMakeFiles/BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_layouts.cpp

cachelib/common/gen-cpp2/BloomFilter_constants.cpp: /opt/workspace/cachelib/common/BloomFilter.thrift
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../cachelib/common/gen-cpp2/BloomFilter_constants.cpp, ../cachelib/common/gen-cpp2/BloomFilter_constants.h, ../cachelib/common/gen-cpp2/BloomFilter_data.cpp, ../cachelib/common/gen-cpp2/BloomFilter_data.h, ../cachelib/common/gen-cpp2/BloomFilter_metadata.cpp, ../cachelib/common/gen-cpp2/BloomFilter_metadata.h, ../cachelib/common/gen-cpp2/BloomFilter_types.cpp, ../cachelib/common/gen-cpp2/BloomFilter_types_custom_protocol.h, ../cachelib/common/gen-cpp2/BloomFilter_types.h, ../cachelib/common/gen-cpp2/BloomFilter_types.tcc, ../cachelib/common/gen-cpp2/BloomFilter_layouts.h, ../cachelib/common/gen-cpp2/BloomFilter_layouts.cpp"
	cd /opt/workspace/cachelib/common && /opt/bin/thrift1 -o /opt/workspace/build/cachelib/common/ --gen mstch_cpp2:frozen2 -I /opt/workspace/cachelib/.. BloomFilter.thrift

cachelib/common/gen-cpp2/BloomFilter_constants.h: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_constants.h

cachelib/common/gen-cpp2/BloomFilter_data.cpp: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_data.cpp

cachelib/common/gen-cpp2/BloomFilter_data.h: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_data.h

cachelib/common/gen-cpp2/BloomFilter_metadata.cpp: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_metadata.cpp

cachelib/common/gen-cpp2/BloomFilter_metadata.h: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_metadata.h

cachelib/common/gen-cpp2/BloomFilter_types.cpp: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_types.cpp

cachelib/common/gen-cpp2/BloomFilter_types_custom_protocol.h: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_types_custom_protocol.h

cachelib/common/gen-cpp2/BloomFilter_types.h: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_types.h

cachelib/common/gen-cpp2/BloomFilter_types.tcc: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_types.tcc

cachelib/common/gen-cpp2/BloomFilter_layouts.h: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_layouts.h

cachelib/common/gen-cpp2/BloomFilter_layouts.cpp: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/common/gen-cpp2/BloomFilter_layouts.cpp

BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_constants.cpp
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_constants.h
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_data.cpp
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_data.h
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_layouts.cpp
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_layouts.h
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_metadata.cpp
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_metadata.h
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_types.cpp
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_types.h
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_types.tcc
BLOOM_thrift_target: cachelib/common/gen-cpp2/BloomFilter_types_custom_protocol.h
BLOOM_thrift_target: common/CMakeFiles/BLOOM_thrift_target
BLOOM_thrift_target: common/CMakeFiles/BLOOM_thrift_target.dir/build.make
.PHONY : BLOOM_thrift_target

# Rule to build all files generated by this target.
common/CMakeFiles/BLOOM_thrift_target.dir/build: BLOOM_thrift_target
.PHONY : common/CMakeFiles/BLOOM_thrift_target.dir/build

common/CMakeFiles/BLOOM_thrift_target.dir/clean:
	cd /opt/workspace/build/common && $(CMAKE_COMMAND) -P CMakeFiles/BLOOM_thrift_target.dir/cmake_clean.cmake
.PHONY : common/CMakeFiles/BLOOM_thrift_target.dir/clean

common/CMakeFiles/BLOOM_thrift_target.dir/depend:
	cd /opt/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/workspace/cachelib /opt/workspace/cachelib/common /opt/workspace/build /opt/workspace/build/common /opt/workspace/build/common/CMakeFiles/BLOOM_thrift_target.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : common/CMakeFiles/BLOOM_thrift_target.dir/depend

