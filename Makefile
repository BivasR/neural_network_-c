AB=./src/
make: buildobj
buildobj: 
	gcc -c ./src/test1.c  ./src/test2.c ./src/helperfunctions.c ./src/test3.c ./src/test4.c ./src/test5.c ./src/test6.c ./src/test7.c ./src/test8.c ./src/test9.c ./src/ab.c ./src/ab2.c ./src/ab3.c ./src/ab4.c -fpic -lm 
build:
	gcc *.o -shared -o ./lib/lib_mlp.so
	sudo cp ./lib/lib_mlp.so /usr/lib
makemain:
	gcc -c ./src/main.c -o ./obj/ke.o -lm
run:
	gcc -o ./obj/ab ./obj/ke.o -L. -l_mlp -lm
runn:
	./obj/ab $(hidden) $(activation) $(back) $(typec) $(eta)
plot:
	gnuplot -p script 
clean:
	rm *.o
	rm *.dat
	rm ./obj/ab
	rm ./obj/ke.o
