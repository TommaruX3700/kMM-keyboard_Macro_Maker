#implicit rules definition
CXX = g++ #define implici rule about what compiler to use
CXXFLAGS += -g -Wall -C:/Qt/6.4.2/mingw_64/include #-C:/Qt/6.4.2/mingw_64/include/QtCore -C:/Qt/6.4.2/mingw_64/include/QtGui -C:/Qt/6.4.2/mingw_64/include/QtWidgets 
LDFLAGS += -C:/Qt/6.4.2/mingw_64/libs #extra flags 
LDLIBS += -QtCore -QtGui -QApplication -PBushButton

#my user-defined rules 
TARGET_EXEC := ./out/kMM #define executing location in my project

SRC_DIR := ./src
HEADERS_DIR := ./headers
BUILD_DIR := ./out

compile_all:
	$(SRC_DIR)/main.cpp $(HEADERS_DIR)/keyLayout.cpp -o $(BUILD_DIR)/kMM

run:
	./$(TARGET_EXEC)

clean: #removing all old objects before re-build all
	rm -f ./out/*
	echo "MAKE_OUTPUT :: All old built objects removed"