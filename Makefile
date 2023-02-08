#IMPLICIT RULES
CXX = g++ #define implici rule about what compiler to use
CXXFLAGS += -g -Wall -IC:\Qt\6.4.2\mingw_64\include -IC:\Qt\6.4.2\mingw_64\include\QtCore -IC:\Qt\6.4.2\mingw_64\include\QtGui -IC:\Qt\6.4.2\mingw_64\include\QtWidgets 
LDFLAGS += -C:\Qt\6.4.2\mingw_64\libs #extra flags 
LDLIBS += -LQtCore -LQtGui -LQApplication -LPBushButton

#USER-DEFINED RULES
TARGET_EXEC := .\out\kMM #defines the executing location in my project
SRC_DIR := .\src
OUT_DIR := .\out
BUILD_DIR := .\out\build

#TARGETS
program: main.o keyLayout.o
	$(CXX) $(OUT_DIR)\main.o $(OUT_DIR)\keyLayout.o -o $(BUILD_DIR)\kMM

main.o: #clean
	$(CXX) -c $(SRC_DIR)\main.cpp -o $(OUT_DIR)\main.o

keyLayout.o: #clean
	$(CXX) -c $(SRC_DIR)\keyLayout.cpp -o $(OUT_DIR)\keyLayout.o

run: program
	.\$(TARGET_EXEC)


#.PHONY: clean #makes "clean" a pseudo-target

#clean: #removing all old objects before re-build all
#	rm -f $(OUT_DIR)/*.o 
#	echo "MAKE_OUTPUT :: All old built objects removed"