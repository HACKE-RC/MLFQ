#include "scheduler.hpp"

threadList* prioritySort(threadList* tList){
    threadList* nextThread = tList->next;
    threadList* currentThread = tList;
    while(currentThread->next->threadInfo != nullptr){
        while (tList->threadInfo != nullptr){
            if (currentThread->threadInfo->threadPriority < tList->threadInfo->threadPriority){
                thread *temp = tList->threadInfo;
                tList->threadInfo = currentThread->threadInfo;
                currentThread->threadInfo = temp;
            }
            tList = tList->next;
        }
        currentThread = currentThread->next;
    }
    return tList;
}