CXX = g++
CXXFLAG = -O3 -ggdb -m64

hello-world: hello-world.o 
#	$(CXX) -o hello-world hello-world.o -lmyfunction -L.  
	$(CXX) -o ./bin/hello-world hello-world.o -lmyfunction -L./lib -Wl,-rpath,'/$$ORIGIN/../lib' -g
	
hello-world.o: libmyfunction.so hello-world.cpp myfunction.h
	$(CXX) -c hello-world.cpp $(CXXFLAG)

libmyfunction.so: myfunction.o
	$(CXX) --shared -o ./lib/libmyfunction.so myfunction.o

myfunction.o: myfunction.cpp myfunction.h
	$(CXX) -c myfunction.cpp $(CXXFLAG)

clean:
	rm myfunction.o ./lib/libmyfunction.so hello-world.o ./bin/hello-world

