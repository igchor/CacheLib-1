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

# Utility rule file for SHM_thrift_target.

# Include any custom commands dependencies for this target.
include shm/CMakeFiles/SHM_thrift_target.dir/compiler_depend.make

# Include the progress variables for this target.
include shm/CMakeFiles/SHM_thrift_target.dir/progress.make

shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_constants.cpp
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_constants.h
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_data.cpp
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_data.h
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_metadata.cpp
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_metadata.h
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_types.cpp
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_types_custom_protocol.h
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_types.h
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_types.tcc
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_layouts.h
shm/CMakeFiles/SHM_thrift_target: cachelib/shm/gen-cpp2/shm_layouts.cpp

cachelib/shm/gen-cpp2/shm_constants.cpp: /opt/workspace/cachelib/shm/shm.thrift
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../cachelib/shm/gen-cpp2/shm_constants.cpp, ../cachelib/shm/gen-cpp2/shm_constants.h, ../cachelib/shm/gen-cpp2/shm_data.cpp, ../cachelib/shm/gen-cpp2/shm_data.h, ../cachelib/shm/gen-cpp2/shm_metadata.cpp, ../cachelib/shm/gen-cpp2/shm_metadata.h, ../cachelib/shm/gen-cpp2/shm_types.cpp, ../cachelib/shm/gen-cpp2/shm_types_custom_protocol.h, ../cachelib/shm/gen-cpp2/shm_types.h, ../cachelib/shm/gen-cpp2/shm_types.tcc, ../cachelib/shm/gen-cpp2/shm_layouts.h, ../cachelib/shm/gen-cpp2/shm_layouts.cpp"
	cd /opt/workspace/cachelib/shm && /opt/bin/thrift1 -o /opt/workspace/build/cachelib/shm/ --gen mstch_cpp2:frozen2 -I /opt/workspace/cachelib/.. shm.thrift

cachelib/shm/gen-cpp2/shm_constants.h: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_constants.h

cachelib/shm/gen-cpp2/shm_data.cpp: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_data.cpp

cachelib/shm/gen-cpp2/shm_data.h: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_data.h

cachelib/shm/gen-cpp2/shm_metadata.cpp: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_metadata.cpp

cachelib/shm/gen-cpp2/shm_metadata.h: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_metadata.h

cachelib/shm/gen-cpp2/shm_types.cpp: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_types.cpp

cachelib/shm/gen-cpp2/shm_types_custom_protocol.h: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_types_custom_protocol.h

cachelib/shm/gen-cpp2/shm_types.h: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_types.h

cachelib/shm/gen-cpp2/shm_types.tcc: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_types.tcc

cachelib/shm/gen-cpp2/shm_layouts.h: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_layouts.h

cachelib/shm/gen-cpp2/shm_layouts.cpp: cachelib/shm/gen-cpp2/shm_constants.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate cachelib/shm/gen-cpp2/shm_layouts.cpp

SHM_thrift_target: cachelib/shm/gen-cpp2/shm_constants.cpp
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_constants.h
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_data.cpp
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_data.h
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_layouts.cpp
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_layouts.h
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_metadata.cpp
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_metadata.h
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_types.cpp
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_types.h
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_types.tcc
SHM_thrift_target: cachelib/shm/gen-cpp2/shm_types_custom_protocol.h
SHM_thrift_target: shm/CMakeFiles/SHM_thrift_target
SHM_thrift_target: shm/CMakeFiles/SHM_thrift_target.dir/build.make
.PHONY : SHM_thrift_target

# Rule to build all files generated by this target.
shm/CMakeFiles/SHM_thrift_target.dir/build: SHM_thrift_target
.PHONY : shm/CMakeFiles/SHM_thrift_target.dir/build

shm/CMakeFiles/SHM_thrift_target.dir/clean:
	cd /opt/workspace/build/shm && $(CMAKE_COMMAND) -P CMakeFiles/SHM_thrift_target.dir/cmake_clean.cmake
.PHONY : shm/CMakeFiles/SHM_thrift_target.dir/clean

shm/CMakeFiles/SHM_thrift_target.dir/depend:
	cd /opt/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/workspace/cachelib /opt/workspace/cachelib/shm /opt/workspace/build /opt/workspace/build/shm /opt/workspace/build/shm/CMakeFiles/SHM_thrift_target.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shm/CMakeFiles/SHM_thrift_target.dir/depend

