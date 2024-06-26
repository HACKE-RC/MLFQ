# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /home/rc/osdev/MLFQ

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rc/osdev/MLFQ

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/rc/osdev/MLFQ/CMakeFiles /home/rc/osdev/MLFQ//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/rc/osdev/MLFQ/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named MLFQ

# Build rule for target.
MLFQ: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 MLFQ
.PHONY : MLFQ

# fast build rule for target.
MLFQ/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/build
.PHONY : MLFQ/fast

src/lib/lock.o: src/lib/lock.cpp.o
.PHONY : src/lib/lock.o

# target to build an object file
src/lib/lock.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/src/lib/lock.cpp.o
.PHONY : src/lib/lock.cpp.o

src/lib/lock.i: src/lib/lock.cpp.i
.PHONY : src/lib/lock.i

# target to preprocess a source file
src/lib/lock.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/src/lib/lock.cpp.i
.PHONY : src/lib/lock.cpp.i

src/lib/lock.s: src/lib/lock.cpp.s
.PHONY : src/lib/lock.s

# target to generate assembly for a file
src/lib/lock.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/src/lib/lock.cpp.s
.PHONY : src/lib/lock.cpp.s

src/scheduler.o: src/scheduler.cpp.o
.PHONY : src/scheduler.o

# target to build an object file
src/scheduler.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/src/scheduler.cpp.o
.PHONY : src/scheduler.cpp.o

src/scheduler.i: src/scheduler.cpp.i
.PHONY : src/scheduler.i

# target to preprocess a source file
src/scheduler.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/src/scheduler.cpp.i
.PHONY : src/scheduler.cpp.i

src/scheduler.s: src/scheduler.cpp.s
.PHONY : src/scheduler.s

# target to generate assembly for a file
src/scheduler.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/src/scheduler.cpp.s
.PHONY : src/scheduler.cpp.s

tests/tenthreads.o: tests/tenthreads.cpp.o
.PHONY : tests/tenthreads.o

# target to build an object file
tests/tenthreads.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/tests/tenthreads.cpp.o
.PHONY : tests/tenthreads.cpp.o

tests/tenthreads.i: tests/tenthreads.cpp.i
.PHONY : tests/tenthreads.i

# target to preprocess a source file
tests/tenthreads.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/tests/tenthreads.cpp.i
.PHONY : tests/tenthreads.cpp.i

tests/tenthreads.s: tests/tenthreads.cpp.s
.PHONY : tests/tenthreads.s

# target to generate assembly for a file
tests/tenthreads.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MLFQ.dir/build.make CMakeFiles/MLFQ.dir/tests/tenthreads.cpp.s
.PHONY : tests/tenthreads.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... MLFQ"
	@echo "... src/lib/lock.o"
	@echo "... src/lib/lock.i"
	@echo "... src/lib/lock.s"
	@echo "... src/scheduler.o"
	@echo "... src/scheduler.i"
	@echo "... src/scheduler.s"
	@echo "... tests/tenthreads.o"
	@echo "... tests/tenthreads.i"
	@echo "... tests/tenthreads.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

