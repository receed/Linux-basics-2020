
SHELL := /bin/bash
build_fast: src/main_fast.cpp
	g++ src/main_fast.cpp src/fast.cpp -o fast

build_slow: src/main_slow.cpp
	g++ src/main_slow.cpp src/slow.cpp -o slow

run_fast: build_fast
	./fast $$(src/generator.sh)

run_slow: build_slow
	./slow $$(src/generator.sh)

time: build_fast build_slow
	time ./$(word 2,$(MAKECMDGOALS)) $$(src/generator.sh)

.PRONY: clean
clean:
	rm -f slow fast

