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

# Include any dependencies generated for this target.
include datatype/CMakeFiles/datatype_test_support.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include datatype/CMakeFiles/datatype_test_support.dir/compiler_depend.make

# Include the progress variables for this target.
include datatype/CMakeFiles/datatype_test_support.dir/progress.make

# Include the compile flags for this target's objects.
include datatype/CMakeFiles/datatype_test_support.dir/flags.make

datatype/CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.o: datatype/CMakeFiles/datatype_test_support.dir/flags.make
datatype/CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.o: /opt/workspace/cachelib/datatype/tests/DataTypeTest.cpp
datatype/CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.o: datatype/CMakeFiles/datatype_test_support.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object datatype/CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.o"
	cd /opt/workspace/build/datatype && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT datatype/CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.o -MF CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.o.d -o CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.o -c /opt/workspace/cachelib/datatype/tests/DataTypeTest.cpp

datatype/CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.i"
	cd /opt/workspace/build/datatype && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/workspace/cachelib/datatype/tests/DataTypeTest.cpp > CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.i

datatype/CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.s"
	cd /opt/workspace/build/datatype && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/workspace/cachelib/datatype/tests/DataTypeTest.cpp -o CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.s

# Object files for target datatype_test_support
datatype_test_support_OBJECTS = \
"CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.o"

# External object files for target datatype_test_support
datatype_test_support_EXTERNAL_OBJECTS =

datatype/libdatatype_test_support.a: datatype/CMakeFiles/datatype_test_support.dir/tests/DataTypeTest.cpp.o
datatype/libdatatype_test_support.a: datatype/CMakeFiles/datatype_test_support.dir/build.make
datatype/libdatatype_test_support.a: datatype/CMakeFiles/datatype_test_support.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdatatype_test_support.a"
	cd /opt/workspace/build/datatype && $(CMAKE_COMMAND) -P CMakeFiles/datatype_test_support.dir/cmake_clean_target.cmake
	cd /opt/workspace/build/datatype && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/datatype_test_support.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
datatype/CMakeFiles/datatype_test_support.dir/build: datatype/libdatatype_test_support.a
.PHONY : datatype/CMakeFiles/datatype_test_support.dir/build

datatype/CMakeFiles/datatype_test_support.dir/clean:
	cd /opt/workspace/build/datatype && $(CMAKE_COMMAND) -P CMakeFiles/datatype_test_support.dir/cmake_clean.cmake
.PHONY : datatype/CMakeFiles/datatype_test_support.dir/clean

datatype/CMakeFiles/datatype_test_support.dir/depend:
	cd /opt/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/workspace/cachelib /opt/workspace/cachelib/datatype /opt/workspace/build /opt/workspace/build/datatype /opt/workspace/build/datatype/CMakeFiles/datatype_test_support.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : datatype/CMakeFiles/datatype_test_support.dir/depend

