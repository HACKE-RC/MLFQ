#ifndef MLFQ_SCHEDULER_HPP
#define MLFQ_SCHEDULER_HPP


enum priority{
    LOW = 1,
    MEDIUM = 2,
    HIGH = 3
};

struct thread{
    priority threadPriority;
};

struct threadList{
    thread* threadInfo;
    threadList* next;
};

threadList* prioritySort(threadList* tList);
#endif
