#IMPLICIT RULES
CXX = g++ #define implici rule about what compiler to use
CXXFLAGS += -g -Wall 
INCLUDES = -IC:\Qt\6.4.2\mingw_64\include -IC:\Qt\6.4.2\mingw_64\include\QtCore -IC:\Qt\6.4.2\mingw_64\include\QtGui -IC:\Qt\6.4.2\mingw_64\include\QtWidgets 
LIBS = -LC:\Qt\6.4.2\mingw_64\libs
LDLIBS += -LQtCore -LQtGui -LQApplication -LPBushButton

#USER-DEFINED RULES
TARGET_EXEC := .\out\kMM #defines the executing location in my project
SRC_DIR := .\src
OUT_DIR := .\out
BUILD_DIR := .\out\build

#posso usare anche variabili d'ambiente


#TARGETS
program: main.o keyLayout.o
	@echo "####################################################"MAKE_OUTPUT :: ASSEMBLING kMM"##############################################################"
	$(CXX) $(OUT_DIR)\main.o $(OUT_DIR)\keyLayout.o -o $(BUILD_DIR)\kMM $(LIBS) $(LDLIBS)

main.o: clean
	$(CXX) $(INCLUDES) $(LIBS) -c $(SRC_DIR)\main.cpp -o $(OUT_DIR)\main.o
	@echo "####################################################"MAKE_OUTPUT :: main BUILT"##############################################################"

keyLayout.o: clean
	$(CXX) $(INCLUDES) $(LIBS) -c $(SRC_DIR)\keyLayout.cpp -o $(OUT_DIR)\keyLayout.o
	@echo "####################################################"MAKE_OUTPUT :: keyLayout BUILT"##############################################################"

run: program
	.\$(TARGET_EXEC)
	@echo "####################################################"MAKE_OUTPUT :: BUILT SUCCESSFULL"##############################################################"

.PHONY: clean #makes "clean" a pseudo-target

clean: #removing all old objects before re-build all
	del /f $(OUT_DIR)\*.o 
	@echo "####################################################"MAKE_OUTPUT :: OLD BUILT FILES REMOVED"##############################################################"
