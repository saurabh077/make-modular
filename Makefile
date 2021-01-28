all: hello

hello: hello_world_main.o hello-world.o
	gcc hello_world_main.o hello-world.o -o hello

hello_world_main.o: hello_world_main.c
	gcc -c hello_world_main.c

hello-world: hello-world.c
	gcc -c hello-world.c -o hello-world

clean:
	rm -rf *o hello
