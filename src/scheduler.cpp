#include "scheduler.hpp"

threadList* prioritySort(threadList* tList){
    threadList* nextThread = tList->next;
    threadList* currentThread = tList;
    while(currentThread->next->threadInfo != nullptr){
        while (nextThread->threadInfo != nullptr){
            if (currentThread->threadInfo->threadPriority < nextThread->threadInfo->threadPriority){
                thread *temp = nextThread->threadInfo;
                nextThread->threadInfo = currentThread->threadInfo;
                currentThread->threadInfo = temp;
            }
            nextThread = nextThread->next;
        }
        currentThread = currentThread->next;
    }
    return tList;
}