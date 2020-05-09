# build Lab12
EXEC = Lab12
#List the complie options
FLAG = -Wall
$(EXEC): Lab12.o Graph.o
	g++ $(FLAG) $^ -o $@
Lab11_test1: Lab11_test1.cpp Graph.o
	g++ $(FLAG) $^ -o $@
Lab11_test2: Lab11_test2.cpp Graph.o
	g++ $(FLAG) $^ -o $@
Lab12.o: Lab12.cpp
	g++ -c i$(FLAG) $^ -o $@

Lab11_test1.o: Lab11_test1.cpp Graph.o
	g++ $(FLAG) $^ -o $@
Lab11_test2.o: Lab11_test2.cpp Graph.o
	g++ $(FLAG) $^ -o $@
Graph.o: Graph.cpp Graph.h
	g++ -c $(FLAG) $< -o $@
clean:
	rm -i *o
	rm -i $(EXEC)
