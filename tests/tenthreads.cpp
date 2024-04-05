#include "../src/scheduler.hpp"
#include <cstdlib>
#include <random>
#include <iostream>

std::default_random_engine generator;

int main(){
    thread threadL[10];
    std::uniform_int_distribution<int> distribution(1,3);

    for (auto & i : threadL){
        i.threadPriority = (priority)(distribution(generator));
        std::cout << "Thread priority: " << i.threadPriority << "\n";
    }

    auto* list = (threadList*)malloc(sizeof(threadList));
    threadList* listInit = list;

    for (auto & i : threadL){
        list->threadInfo = &i;
        list->next = (threadList*)malloc(sizeof(threadList));
        list = list->next;
    }

    list = listInit;
    list = runThreads(list);

    std::cout << "\nThread Priority after updates: ";
    std::cout << "\nHigh -> Low :: Low -> Medium :: Medium -> Low\n\n";
    while (list->next != nullptr){
        std::cout << "Thread priority: " << list->threadInfo->threadPriority << "\n";
        list = list->next;
    }

    return 0;
}
