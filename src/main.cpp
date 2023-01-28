#include <iostream>
#include <QApplication>
#include <QPushButton>

#define VERSION 0.1

using namespace std;

int main (int argc, char **argv)
{
    cout << "kMM - build " << VERSION;
    QApplication app (argc, argv);

    QPushButton button ("test");
    button.show();

    return app.exec(); //launchs event loop
}