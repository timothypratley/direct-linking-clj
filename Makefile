.PHONY: all hello primes

all: hello primes

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

