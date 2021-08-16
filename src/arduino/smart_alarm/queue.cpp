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

#include "queue.h"

Queue::Queue() : _qSize(kInferenceSequence), _stored(0) { }

uint8_t* Queue::getQueuePointer() {
    return _queue;
}

uint8_t Queue::getItemAt(uint8_t index) {
    return _queue[index];
}

bool Queue::isFull() {

    bool ret = (_stored == _qSize) ? true : false;
    return ret;
}

void Queue::enqueue(int newItem) {

    if(isFull()) {
        _dequeue();
        _queue[_qSize - 1] = newItem;
    }
    else {
        _queue[_stored] = newItem;
        _stored ++;
    }
}

void Queue::_dequeue() {
    for(int i = 0; i < _qSize - 1; i++)
        _queue[i] = _queue[i + 1];
}
