main : main.o xxhash.o position.o
	g++ -o pgntofen main.o xxhash.o position.o
	
position.o : position.cpp position.h setup.h
	g++ -c position.cpp
	
xxhash.o :
	g++ -c utils/src/xxhash.c
	
main.o : main.cpp position.h setup.h
	g++ -c main.cpp
	
clean :
	rm *.o