all: stack inheritstack templatestack

stack: stack.h stack.cc
	g++ -g -fno-pie -no-pie -o stack stack.cc

inheritstack: inheritstack.h inheritstack.cc list.h list.cc
	g++ -g -fno-pie -no-pie -o inheritstack inheritstack.cc list.cc

templatestack: templatestack.h templatestack.cc
	g++ -g -fno-pie -no-pie -o templatestack templatestack.cc

clean:
	rm -f stack inheritstack templatestack

