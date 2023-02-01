MAKE := make

all: 
	$(MAKE) -C ./src
#	$(MAKE) -C ./headers

CXXFLAGS += -C:/Qt/6.4.2/mingw_64/include
#-C:/Qt/6.4.2/mingw_64/include/QtCore -C:/Qt/6.4.2/mingw_64/include/QtGui -C:/Qt/6.4.2/mingw_64/include/QtWidgets 

LDFLAGS += -C:/Qt/6.4.2/mingw_64/libs
LDLIBS += -QtCore -QtGui -QApplication -PBushButton