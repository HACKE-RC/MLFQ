#ifndef MLFQ_SCHEDULER_HPP
#define MLFQ_SCHEDULER_HPP
#include "lib/lock.hpp"
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
int getProcessorCount();
threadList* runThreads(threadList* sortedList);
void execute(thread* threadInfo, int processorNo, uint8_t quanta);
int getQuanta(priority threadPriority);
priority changePriority(priority currentPriority);
#endif
