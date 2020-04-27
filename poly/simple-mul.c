#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    char a = strtol(argv[1], NULL, 10);
    char b = strtol(argv[1], NULL, 10);
    char x = a * b;
    printf("x: %u\n", x);
    return 0;
}
