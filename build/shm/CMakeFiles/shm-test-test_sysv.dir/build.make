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
include shm/CMakeFiles/shm-test-test_sysv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include shm/CMakeFiles/shm-test-test_sysv.dir/compiler_depend.make

# Include the progress variables for this target.
include shm/CMakeFiles/shm-test-test_sysv.dir/progress.make

# Include the compile flags for this target's objects.
include shm/CMakeFiles/shm-test-test_sysv.dir/flags.make

shm/CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.o: shm/CMakeFiles/shm-test-test_sysv.dir/flags.make
shm/CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.o: /opt/workspace/cachelib/shm/tests/test_sysv.cpp
shm/CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.o: shm/CMakeFiles/shm-test-test_sysv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object shm/CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.o"
	cd /opt/workspace/build/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT shm/CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.o -MF CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.o.d -o CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.o -c /opt/workspace/cachelib/shm/tests/test_sysv.cpp

shm/CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.i"
	cd /opt/workspace/build/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/workspace/cachelib/shm/tests/test_sysv.cpp > CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.i

shm/CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.s"
	cd /opt/workspace/build/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/workspace/cachelib/shm/tests/test_sysv.cpp -o CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.s

# Object files for target shm-test-test_sysv
shm__test__test_sysv_OBJECTS = \
"CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.o"

# External object files for target shm-test-test_sysv
shm__test__test_sysv_EXTERNAL_OBJECTS =

shm/shm-test-test_sysv: shm/CMakeFiles/shm-test-test_sysv.dir/tests/test_sysv.cpp.o
shm/shm-test-test_sysv: shm/CMakeFiles/shm-test-test_sysv.dir/build.make
shm/shm-test-test_sysv: shm/libshm_test_support.a
shm/shm-test-test_sysv: shm/libcachelib_shm.a
shm/shm-test-test_sysv: common/libcachelib_common.a
shm/shm-test-test_sysv: /opt/lib/libthriftcpp2.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/libthriftfrozen2.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/libthriftmetadata.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/libthrifttype.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/libthriftprotocol.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/libasync.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/libwangle.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/libfizz.so.1.0.0
shm/shm-test-test_sysv: /usr/lib64/libsodium.so
shm/shm-test-test_sysv: /usr/lib64/librt.so
shm/shm-test-test_sysv: /opt/lib/libtransport.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/librpcmetadata.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/libthrift-core.so.1.0.0
shm/shm-test-test_sysv: /opt/lib/libconcurrency.so.1.0.0
shm/shm-test-test_sysv: /usr/lib64/libz.so
shm/shm-test-test_sysv: /opt/lib/libfollybenchmark.so.0.58.0-dev
shm/shm-test-test_sysv: /opt/lib/libfolly_exception_counter.so.0.58.0-dev
shm/shm-test-test_sysv: /opt/lib/libfolly_exception_tracer.so.0.58.0-dev
shm/shm-test-test_sysv: /opt/lib/libfolly_exception_tracer_base.so.0.58.0-dev
shm/shm-test-test_sysv: /opt/lib/libfolly.so.0.58.0-dev
shm/shm-test-test_sysv: /opt/lib64/libfmt.so.8.0.1
shm/shm-test-test_sysv: /opt/lib/libgflags.so.2.2.2
shm/shm-test-test_sysv: /usr/lib64/libboost_context.so
shm/shm-test-test_sysv: /usr/lib64/libboost_filesystem.so
shm/shm-test-test_sysv: /usr/lib64/libboost_program_options.so
shm/shm-test-test_sysv: /usr/lib64/libboost_regex.so
shm/shm-test-test_sysv: /usr/lib64/libboost_system.so
shm/shm-test-test_sysv: /usr/lib64/libboost_thread.so
shm/shm-test-test_sysv: /usr/lib64/libboost_chrono.so
shm/shm-test-test_sysv: /usr/lib64/libboost_date_time.so
shm/shm-test-test_sysv: /usr/lib64/libboost_atomic.so
shm/shm-test-test_sysv: /opt/lib64/libglog.so
shm/shm-test-test_sysv: /usr/lib64/libevent.so
shm/shm-test-test_sysv: /usr/lib64/libdouble-conversion.so
shm/shm-test-test_sysv: /usr/lib64/libz.so
shm/shm-test-test_sysv: /usr/lib64/libssl.so
shm/shm-test-test_sysv: /usr/lib64/libcrypto.so
shm/shm-test-test_sysv: /usr/lib64/libbz2.so
shm/shm-test-test_sysv: /usr/lib64/liblzma.so
shm/shm-test-test_sysv: /usr/lib64/liblz4.so
shm/shm-test-test_sysv: /opt/lib64/libzstd.so
shm/shm-test-test_sysv: /usr/lib64/libsnappy.so
shm/shm-test-test_sysv: /usr/lib64/libdwarf.so
shm/shm-test-test_sysv: /usr/lib64/libiberty.a
shm/shm-test-test_sysv: /usr/lib64/libaio.so
shm/shm-test-test_sysv: /usr/lib64/libsodium.so
shm/shm-test-test_sysv: /usr/lib64/libunwind.so
shm/shm-test-test_sysv: /opt/lib64/libglog.so
shm/shm-test-test_sysv: /opt/lib/libgflags.so.2.2.2
shm/shm-test-test_sysv: /opt/lib64/libgtest_main.so.1.11.0
shm/shm-test-test_sysv: /opt/lib64/libgmock.so.1.11.0
shm/shm-test-test_sysv: /opt/lib64/libgtest.so.1.11.0
shm/shm-test-test_sysv: shm/CMakeFiles/shm-test-test_sysv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable shm-test-test_sysv"
	cd /opt/workspace/build/shm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shm-test-test_sysv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
shm/CMakeFiles/shm-test-test_sysv.dir/build: shm/shm-test-test_sysv
.PHONY : shm/CMakeFiles/shm-test-test_sysv.dir/build

shm/CMakeFiles/shm-test-test_sysv.dir/clean:
	cd /opt/workspace/build/shm && $(CMAKE_COMMAND) -P CMakeFiles/shm-test-test_sysv.dir/cmake_clean.cmake
.PHONY : shm/CMakeFiles/shm-test-test_sysv.dir/clean

shm/CMakeFiles/shm-test-test_sysv.dir/depend:
	cd /opt/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/workspace/cachelib /opt/workspace/cachelib/shm /opt/workspace/build /opt/workspace/build/shm /opt/workspace/build/shm/CMakeFiles/shm-test-test_sysv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shm/CMakeFiles/shm-test-test_sysv.dir/depend

