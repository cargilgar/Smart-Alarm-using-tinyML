/* Copyright 2021 Carlos Gil, Daniel Moreno.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#pragma once

#include "constants.h"

/// @file queue.h
///
/// @brief This file is a very simplistic representation of a FIFO data structure
/// to keep track of the latest `kInferenceSequence` inferences over time.
///
/// @details This file has been designed to allow only enqueuing from the caller.
/// It is initialized empty and gets filled via enqueue(int). Once filled up,
/// the next time it receives a new item, it then proceeds to dequeue the oldest
/// item (i.e. the first introduced). De-queuing is done automatically avoiding
/// emptying the queue unintentionally from the caller.

class Queue {
public:
    Queue();

    uint8_t* getQueuePointer();
    uint8_t getItemAt(uint8_t index);
    void enqueue(int newItem);
    bool isFull();

private:
    uint8_t _qSize, _stored;
    uint8_t _queue[kInferenceSequence];

    void _dequeue();
};
