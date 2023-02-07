#include <iostream>
#include <QApplication>
#include <QPushButton>

//USER-DEFINED
//Note that user defined libraries are with "" which idicates they're located inside the current working folder

#include "keyLayout.cpp"

#define VERSION 0.1

using namespace std;
using namespace keys;

int main (int argc, char **argv)
{
    cout << "kMM - build " << VERSION;
    QApplication app (argc, argv);

    QPushButton button ("test");
    button.show();

    return app.exec(); //launchs event loop
}



/*  
TODO:
    - make an header containing all the keys, referred by pointers (maybe an array)

PROBLEMS:
    - how do i listen to system costantly?
    - how do i input the system?
    - how do i make it usable both in linux and windows?

IDEAS:
    - make code understand on which system its executed
    - i may set-up macros as linked lists or with a data structure dinamically setted up, to check 
      and even 

PROJECT:
    Headers:
        - keyLayout
            [ contains all key references for all the different layouts, maybe with pointers since they're fast af ]

    Classes:
        - Keyboard
        - Macro

    Methods:
        - Macro.new()
        - Macro.edit()
        - Macro.delete()
*/