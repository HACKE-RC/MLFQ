#include "scheduler.hpp"
uint32_t threadLock = 0;

threadList* prioritySort(threadList* tList){
    if (tList == nullptr || tList->next == nullptr){
        return tList;
    }

    bool swapped;
    threadList* currentThread;

    do {
        swapped = false;
        currentThread = tList;

        while (currentThread->next->threadInfo != nullptr) {
            if (currentThread->threadInfo->threadPriority < currentThread->next->threadInfo->threadPriority) {
                thread *temp = currentThread->threadInfo;
                currentThread->threadInfo = currentThread->next->threadInfo;
                currentThread->next->threadInfo = temp;
                swapped = true;
            }
            currentThread = currentThread->next;
        }
    }
    while (swapped);

    return tList;
}

threadList* runThreads(threadList* currentTList){
    lock(threadLock);
    int processorCount = getProcessorCount();
    auto *execThreadList = new thread*[processorCount];

    int threadsScheduled = 0;

    threadList* sortedList = prioritySort(currentTList);
    threadList* sortedList2 = sortedList;
    threadList* sortedList3 = sortedList;

    while(sortedList->threadInfo != nullptr && sortedList->next != nullptr){
        for (int i = 0; i < processorCount && sortedList->threadInfo != nullptr; i++){
            execThreadList[i] = sortedList->threadInfo;
            sortedList = sortedList->next;
        }

        for (int i = 0; i < processorCount; i++){
            if (execThreadList[i] != nullptr && sortedList2->threadInfo != nullptr){
                execute(execThreadList[i], i, getQuanta(execThreadList[i]->threadPriority));
                execThreadList[i]->threadPriority = changePriority(execThreadList[i]->threadPriority);
                sortedList2->threadInfo->threadPriority = execThreadList[i]->threadPriority;
                sortedList2 = sortedList2->next;
                threadsScheduled++;
            }
        }
    }

    delete[] execThreadList;
    unlock(threadLock);
    return sortedList3;
}

int getProcessorCount(){
//  your implementation
    return 1;
}

void execute(thread* threadInfo, int processorNo, uint8_t quanta){
}

int getQuanta(priority threadPriority){
    return 1;
}

priority changePriority(priority currentPriority){
    switch (currentPriority) {
        case HIGH:
            return LOW;
        case LOW:
            return MEDIUM;
        case MEDIUM:
            return HIGH;
    }
    return LOW;
}