sicsim.out : sicsim.o
	gcc -Wall -o sicsim.out sicsim.o

sicsim.o : sicsim.c
	gcc -Wall -c -o sicsim.o sicsim.c

clean:
	rm *.o sicsim.out



