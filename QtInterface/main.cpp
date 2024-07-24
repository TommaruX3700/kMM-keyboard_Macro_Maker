#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    /*
     * 1 - Checks if kMM is already running
     * 2 - If its not running,
     */
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
}
