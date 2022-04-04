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
include allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/compiler_depend.make

# Include the progress variables for this target.
include allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/progress.make

# Include the compile flags for this target's objects.
include allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/flags.make

allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.o: allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/flags.make
allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.o: /opt/workspace/cachelib/allocator/nvmcache/tests/NavyConfigTest.cpp
allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.o: allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.o"
	cd /opt/workspace/build/allocator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.o -MF CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.o.d -o CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.o -c /opt/workspace/cachelib/allocator/nvmcache/tests/NavyConfigTest.cpp

allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.i"
	cd /opt/workspace/build/allocator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/workspace/cachelib/allocator/nvmcache/tests/NavyConfigTest.cpp > CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.i

allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.s"
	cd /opt/workspace/build/allocator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/workspace/cachelib/allocator/nvmcache/tests/NavyConfigTest.cpp -o CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.s

# Object files for target allocator-test-NavyConfigTest
allocator__test__NavyConfigTest_OBJECTS = \
"CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.o"

# External object files for target allocator-test-NavyConfigTest
allocator__test__NavyConfigTest_EXTERNAL_OBJECTS =

allocator/allocator-test-NavyConfigTest: allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/nvmcache/tests/NavyConfigTest.cpp.o
allocator/allocator-test-NavyConfigTest: allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/build.make
allocator/allocator-test-NavyConfigTest: allocator/liballocator_test_support.a
allocator/allocator-test-NavyConfigTest: allocator/libcachelib_allocator.a
allocator/allocator-test-NavyConfigTest: navy/libcachelib_navy.a
allocator/allocator-test-NavyConfigTest: shm/libcachelib_shm.a
allocator/allocator-test-NavyConfigTest: common/libcachelib_common.a
allocator/allocator-test-NavyConfigTest: /opt/lib/libthriftcpp2.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/libthriftfrozen2.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/libthriftmetadata.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/libthrifttype.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/libthriftprotocol.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/libasync.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/libwangle.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/libfizz.so.1.0.0
allocator/allocator-test-NavyConfigTest: /usr/lib64/libsodium.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/librt.so
allocator/allocator-test-NavyConfigTest: /opt/lib/libtransport.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/librpcmetadata.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/libthrift-core.so.1.0.0
allocator/allocator-test-NavyConfigTest: /opt/lib/libconcurrency.so.1.0.0
allocator/allocator-test-NavyConfigTest: /usr/lib64/libz.so
allocator/allocator-test-NavyConfigTest: /opt/lib/libfollybenchmark.so.0.58.0-dev
allocator/allocator-test-NavyConfigTest: /opt/lib/libfolly_exception_counter.so.0.58.0-dev
allocator/allocator-test-NavyConfigTest: /opt/lib/libfolly_exception_tracer.so.0.58.0-dev
allocator/allocator-test-NavyConfigTest: /opt/lib/libfolly_exception_tracer_base.so.0.58.0-dev
allocator/allocator-test-NavyConfigTest: /opt/lib/libfolly.so.0.58.0-dev
allocator/allocator-test-NavyConfigTest: /opt/lib64/libfmt.so.8.0.1
allocator/allocator-test-NavyConfigTest: /opt/lib/libgflags.so.2.2.2
allocator/allocator-test-NavyConfigTest: /usr/lib64/libboost_context.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libboost_filesystem.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libboost_program_options.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libboost_regex.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libboost_system.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libboost_thread.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libboost_chrono.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libboost_date_time.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libboost_atomic.so
allocator/allocator-test-NavyConfigTest: /opt/lib64/libglog.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libevent.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libdouble-conversion.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libz.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libssl.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libcrypto.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libbz2.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/liblzma.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/liblz4.so
allocator/allocator-test-NavyConfigTest: /opt/lib64/libzstd.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libsnappy.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libdwarf.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libiberty.a
allocator/allocator-test-NavyConfigTest: /usr/lib64/libaio.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libsodium.so
allocator/allocator-test-NavyConfigTest: /usr/lib64/libunwind.so
allocator/allocator-test-NavyConfigTest: /opt/lib64/libglog.so
allocator/allocator-test-NavyConfigTest: /opt/lib/libgflags.so.2.2.2
allocator/allocator-test-NavyConfigTest: /opt/lib64/libgtest_main.so.1.11.0
allocator/allocator-test-NavyConfigTest: /opt/lib64/libgmock.so.1.11.0
allocator/allocator-test-NavyConfigTest: /opt/lib64/libgtest.so.1.11.0
allocator/allocator-test-NavyConfigTest: allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable allocator-test-NavyConfigTest"
	cd /opt/workspace/build/allocator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/allocator-test-NavyConfigTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/build: allocator/allocator-test-NavyConfigTest
.PHONY : allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/build

allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/clean:
	cd /opt/workspace/build/allocator && $(CMAKE_COMMAND) -P CMakeFiles/allocator-test-NavyConfigTest.dir/cmake_clean.cmake
.PHONY : allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/clean

allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/depend:
	cd /opt/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/workspace/cachelib /opt/workspace/cachelib/allocator /opt/workspace/build /opt/workspace/build/allocator /opt/workspace/build/allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : allocator/CMakeFiles/allocator-test-NavyConfigTest.dir/depend

