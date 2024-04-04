//#include "scheduler.hpp"
#include <cstdio>
#include <cstdlib>
#include <random>
#include <iostream>
std::default_random_engine generator;

enum priority{
    LOW = 0,
    MEDIUM = 1,
    HIGH = 2
};

struct thread{
    priority threadPriority;
};

struct threadList{
    thread* threadInfo;
    threadList* next;
};

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

}