EXEC = CS216PA3
OBJECTS = Graph.o WordLadder.o main.o
$(EXEC): $(OBJECTS)
	g++ $^ -o $@

HEADERS = Graph.h WordLadder.h

%.o: %.cpp $(HEADERS)
	g++ -c $< -o $@ 

clean:
	rm -i *o $(EXEC)
