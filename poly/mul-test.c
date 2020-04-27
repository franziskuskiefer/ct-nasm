#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdint.h>

void run(uint8_t a, uint8_t b) {
    clock_t t;
    t = clock();
    for (size_t i = 0; i < 10000000; i++) {
        uint8_t tmp = a * b;
    }
    t = clock() - t; 
    printf("%u*%u took %lu XXX to execute \n", a, b, t); 
}

int main(int argc, char const *argv[]) {
    uint8_t a_null = 0;
    uint8_t a_one = 1;
    uint8_t a_two = 2;
    uint8_t b_null = 0;
    uint8_t b_one = 1;
    uint8_t b_two = 2;

    run(0, 0);
    run(0, 1);
    run(0, 2);
    run(0, 0);
    run(1, 0);
    run(2, 0);

    run(1, 1);
    run(2, 1);
    run(1, 2);
    run(2, 2);

    return 0;
}

