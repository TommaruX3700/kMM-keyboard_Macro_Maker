CXXFLAGS += -C:/Qt/6.4.2/mingw_64/include
#-C:/Qt/6.4.2/mingw_64/include/QtCore -C:/Qt/6.4.2/mingw_64/include/QtGui -C:/Qt/6.4.2/mingw_64/include/QtWidgets 

LDFLAGS += -C:/Qt/6.4.2/mingw_64/libs

LDLIBS += -lQtCore -lQtGui -lQApplication -

kMM: kMM.o kMM.moc.o kMM.ui.o 
	$(CXX) $(LDFLAGS) -o main $^ $(LDLIBS)

kMM.o: kMM.cpp kMM.ui.