#include <iostream>
#include <map>

#include "header.h"

/*
    Header are used during pre-processing of the code, so what is inside here
    should be compiled before main programm compilation.

    Header file, contains:
        -Function definitions
        -Data type definitions
        -Macros
        
*/

void keyboard :: newMacro () { //definizione della funzione

}

std::map <char, char> it_IT = {
    { 'A', '1' } //undestand first how to recognize keys
};

std::map <char, char> us_ANSI = {
    { 'A', '1' } //undestand first how to recognize keys
};
