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

#ifndef INPUT_HANDLER_H
#define INPUT_HANDLER_H

#include <stdint.h> 
// This class acts as a container to hold all the data that is going to be input
// into the input Tensor of the model.
//
// It also provides a further level of abstraction by carrying out all the
// calculations needed to generate the features. It takes the raw data, process
// it, generate the required features by the model and stores them until new
// data comes in, repeating again the process.
class InputHandler
{
public:
    InputHandler(uint8_t arrSize);
    InputHandler() = delete;
    void generateFeatures(float x, float y, float z, float bpm);

    int populateInputTensor();

private:
    uint8_t _arrSize;
};


#endif
