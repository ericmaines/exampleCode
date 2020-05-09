# Define the CFLAGS variable, which may be used as $(CFLAGS) in rules.
# Use the C99 standard, optimize for debugging, and enable debugging
# information.
CFLAGS = -std=c99 -Og -g

# The first rule is the default one if you just type "make".
# This rule builds both programs.
all: mystery1 mystery2

# $(CC) is the system's default C compiler.
# $(CFLAGS) is the CFLAGS variable defined above.
# $@ is the target (testprog)
# $^ is the list of prerequisites (mystery1.o main.o).
mystery1: mystery1.o main.o 
	$(CC) $(CFLAGS) -o $@ $^

# The same for mystery2
mystery2: mystery2.o main2.o
	$(CC) $(CFLAGS) -o $@ $^

# How to "make clean".
clean:
	rm -f mystery1 mystery2 main.o main2.o

# How to build a .o file if you have a .c file.  The % signifies that this
# is an implicit rule, where % can stand for anything (and both "%"s stand
# for the same thing).
#
# $< the first prerequisite (foo.c).  $^ would work here as well.
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
