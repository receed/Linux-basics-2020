cmake_minimum_required(VERSION 3.10)
project(Fibonacci)
add_executable(Fibonacci src/main.cpp src/fast.cpp)

enable_testing()
function(do_test name arg result)
    add_test(NAME ${name} COMMAND Fibonacci ${arg})
  set_tests_properties(${name}
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
    )
endfunction(do_test)
do_test("Zero" 0 "0")
do_test("One" 1 "1")
do_test("Small" 5 "5")
do_test("Large" 50 "12586269025")

