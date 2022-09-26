.PHONY: all setup hello primes

all: setup hello primes

setup:
	mkdir -p classes

hello:
	time clj -M:hello-dynamic
	time clj -M:hello-static
	time clj -M:hello-compile
	time java -cp `clj -Spath` direct.hello

primes:
	time clj -M:primes-dynamic
	time clj -M:primes-static
	time clj -M:primes-compile
	time java -cp `clj -Spath` direct.primes

