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
include navy/CMakeFiles/navy-test-SeqPointsTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include navy/CMakeFiles/navy-test-SeqPointsTest.dir/compiler_depend.make

# Include the progress variables for this target.
include navy/CMakeFiles/navy-test-SeqPointsTest.dir/progress.make

# Include the compile flags for this target's objects.
include navy/CMakeFiles/navy-test-SeqPointsTest.dir/flags.make

navy/CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.o: navy/CMakeFiles/navy-test-SeqPointsTest.dir/flags.make
navy/CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.o: /opt/workspace/cachelib/navy/testing/tests/SeqPointsTest.cpp
navy/CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.o: navy/CMakeFiles/navy-test-SeqPointsTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object navy/CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.o"
	cd /opt/workspace/build/navy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT navy/CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.o -MF CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.o.d -o CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.o -c /opt/workspace/cachelib/navy/testing/tests/SeqPointsTest.cpp

navy/CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.i"
	cd /opt/workspace/build/navy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/workspace/cachelib/navy/testing/tests/SeqPointsTest.cpp > CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.i

navy/CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.s"
	cd /opt/workspace/build/navy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/workspace/cachelib/navy/testing/tests/SeqPointsTest.cpp -o CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.s

# Object files for target navy-test-SeqPointsTest
navy__test__SeqPointsTest_OBJECTS = \
"CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.o"

# External object files for target navy-test-SeqPointsTest
navy__test__SeqPointsTest_EXTERNAL_OBJECTS =

navy/navy-test-SeqPointsTest: navy/CMakeFiles/navy-test-SeqPointsTest.dir/testing/tests/SeqPointsTest.cpp.o
navy/navy-test-SeqPointsTest: navy/CMakeFiles/navy-test-SeqPointsTest.dir/build.make
navy/navy-test-SeqPointsTest: navy/libnavy_test_support.a
navy/navy-test-SeqPointsTest: navy/libcachelib_navy.a
navy/navy-test-SeqPointsTest: common/libcachelib_common.a
navy/navy-test-SeqPointsTest: /opt/lib/libthriftcpp2.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/libthriftfrozen2.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/libthriftmetadata.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/libthrifttype.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/libthriftprotocol.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/libasync.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/libwangle.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/libfizz.so.1.0.0
navy/navy-test-SeqPointsTest: /usr/lib64/libsodium.so
navy/navy-test-SeqPointsTest: /usr/lib64/librt.so
navy/navy-test-SeqPointsTest: /opt/lib/libtransport.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/librpcmetadata.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/libthrift-core.so.1.0.0
navy/navy-test-SeqPointsTest: /opt/lib/libconcurrency.so.1.0.0
navy/navy-test-SeqPointsTest: /usr/lib64/libz.so
navy/navy-test-SeqPointsTest: /opt/lib/libfollybenchmark.so.0.58.0-dev
navy/navy-test-SeqPointsTest: /opt/lib/libfolly_exception_counter.so.0.58.0-dev
navy/navy-test-SeqPointsTest: /opt/lib/libfolly_exception_tracer.so.0.58.0-dev
navy/navy-test-SeqPointsTest: /opt/lib/libfolly_exception_tracer_base.so.0.58.0-dev
navy/navy-test-SeqPointsTest: /opt/lib/libfolly.so.0.58.0-dev
navy/navy-test-SeqPointsTest: /opt/lib64/libfmt.so.8.0.1
navy/navy-test-SeqPointsTest: /opt/lib/libgflags.so.2.2.2
navy/navy-test-SeqPointsTest: /usr/lib64/libboost_context.so
navy/navy-test-SeqPointsTest: /usr/lib64/libboost_filesystem.so
navy/navy-test-SeqPointsTest: /usr/lib64/libboost_program_options.so
navy/navy-test-SeqPointsTest: /usr/lib64/libboost_regex.so
navy/navy-test-SeqPointsTest: /usr/lib64/libboost_system.so
navy/navy-test-SeqPointsTest: /usr/lib64/libboost_thread.so
navy/navy-test-SeqPointsTest: /usr/lib64/libboost_chrono.so
navy/navy-test-SeqPointsTest: /usr/lib64/libboost_date_time.so
navy/navy-test-SeqPointsTest: /usr/lib64/libboost_atomic.so
navy/navy-test-SeqPointsTest: /opt/lib64/libglog.so
navy/navy-test-SeqPointsTest: /usr/lib64/libevent.so
navy/navy-test-SeqPointsTest: /usr/lib64/libdouble-conversion.so
navy/navy-test-SeqPointsTest: /usr/lib64/libz.so
navy/navy-test-SeqPointsTest: /usr/lib64/libssl.so
navy/navy-test-SeqPointsTest: /usr/lib64/libcrypto.so
navy/navy-test-SeqPointsTest: /usr/lib64/libbz2.so
navy/navy-test-SeqPointsTest: /usr/lib64/liblzma.so
navy/navy-test-SeqPointsTest: /usr/lib64/liblz4.so
navy/navy-test-SeqPointsTest: /opt/lib64/libzstd.so
navy/navy-test-SeqPointsTest: /usr/lib64/libsnappy.so
navy/navy-test-SeqPointsTest: /usr/lib64/libdwarf.so
navy/navy-test-SeqPointsTest: /usr/lib64/libiberty.a
navy/navy-test-SeqPointsTest: /usr/lib64/libaio.so
navy/navy-test-SeqPointsTest: /usr/lib64/libsodium.so
navy/navy-test-SeqPointsTest: /usr/lib64/libunwind.so
navy/navy-test-SeqPointsTest: /opt/lib64/libglog.so
navy/navy-test-SeqPointsTest: /opt/lib/libgflags.so.2.2.2
navy/navy-test-SeqPointsTest: /opt/lib64/libgtest_main.so.1.11.0
navy/navy-test-SeqPointsTest: /opt/lib64/libgmock.so.1.11.0
navy/navy-test-SeqPointsTest: /opt/lib64/libgtest.so.1.11.0
navy/navy-test-SeqPointsTest: navy/CMakeFiles/navy-test-SeqPointsTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable navy-test-SeqPointsTest"
	cd /opt/workspace/build/navy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/navy-test-SeqPointsTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
navy/CMakeFiles/navy-test-SeqPointsTest.dir/build: navy/navy-test-SeqPointsTest
.PHONY : navy/CMakeFiles/navy-test-SeqPointsTest.dir/build

navy/CMakeFiles/navy-test-SeqPointsTest.dir/clean:
	cd /opt/workspace/build/navy && $(CMAKE_COMMAND) -P CMakeFiles/navy-test-SeqPointsTest.dir/cmake_clean.cmake
.PHONY : navy/CMakeFiles/navy-test-SeqPointsTest.dir/clean

navy/CMakeFiles/navy-test-SeqPointsTest.dir/depend:
	cd /opt/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/workspace/cachelib /opt/workspace/cachelib/navy /opt/workspace/build /opt/workspace/build/navy /opt/workspace/build/navy/CMakeFiles/navy-test-SeqPointsTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : navy/CMakeFiles/navy-test-SeqPointsTest.dir/depend

