#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <errno.h>

/**
 * This is just a simple dummy program, which can be used for any package which doesn't have any 
 * specific 'package test requirements'.
 */
int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Invalid argument count: %d\n", argc);
        return 1;
    }

    char *end;
    errno = 0;
    long value = strtol(argv[1], &end, 10);
    if (errno == ERANGE || end == argv[1] || *end != '\0') {
        printf("Invalid number argument: %s\n", argv[1]);
        return 1;
    }

    printf("%ld\n", value * 2);
}
