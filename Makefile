PROJDIR :=$()
MAKE := make

CXXFLAGS += -C:/Qt/6.4.2/mingw_64/include #path to includes
#-C:/Qt/6.4.2/mingw_64/include/QtCore -C:/Qt/6.4.2/mingw_64/include/QtGui -C:/Qt/6.4.2/mingw_64/include/QtWidgets 

LDFLAGS += -C:/Qt/6.4.2/mingw_64/libs #path to libs
LDLIBS += -QtCore -QtGui -QApplication -PBushButton

all: 
	$(MAKE) -C ./src
	$(MAKE) -C ./headers