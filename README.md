# MLFQ
This is a Multilevel Feedback Queue *based* scheduler implementation in C++. It does uses First-Come-First-Serve for simplicity and leaves the quanta checks to the impementer. 
The execution of the threads is also left to the implementer using an empty function [execute](https://github.com/HACKE-RC/MLFQ/blob/3a94529557fd3fee67b7ee5c296c5b27d87a300e/src/scheduler.cpp#L69).

The following function need to be implementer defined:
- [getQuanta](https://github.com/HACKE-RC/MLFQ/blob/3a94529557fd3fee67b7ee5c296c5b27d87a300e/src/scheduler.cpp#L72)
- [changePriority](https://github.com/HACKE-RC/MLFQ/blob/3a94529557fd3fee67b7ee5c296c5b27d87a300e/src/scheduler.cpp#L76)
- [getProcessorCount](https://github.com/HACKE-RC/MLFQ/blob/3a94529557fd3fee67b7ee5c296c5b27d87a300e/src/scheduler.cpp#L64)

# Building tests
The following command can be used to build the given test(s)
```
cmake .
make
```

The files are building can be found in the `build` directory.
