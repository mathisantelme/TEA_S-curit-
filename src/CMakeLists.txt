# on définit un nom de projet et une version minimale de cmake à utiliser
cmake_minimum_required(VERSION 3.6)
project(TEA-Securite)

add_executable(OrderResolve Utils_OrderResolve.c) # on ajoute un nouvel executable
add_executable(SolveLinear Utils_SolveLinear.c)
add_executable(Primes Utils_Primes.c)
add_executable(Pi Utils_PI.c)

target_link_libraries(OrderResolve m) # on ajoute la librairie math.h au executable qui la necessite
target_link_libraries(Primes m) 