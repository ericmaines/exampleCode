EXEC = Lab12
OBJECTS = Graph.o Lab12.o
$(EXEC): $(OBJECTS)
	g++ $^ -o $@

%.o: %.cpp
	g++ -c $< -o $@

HEADERS = Graph.h

%.o: %.cpp $(HEADERS)
	g++ -c $< -o $@
clean:
	rm -i *o $(EXEC)
