#include <stdio.h>

#define SWAP(x, y) {        \
        typeof (x) tmp = y; \
        y = x;              \
        x = tmp;            \
    }

int main() {
    int a = 1;
    int b = 2;
    SWAP(a, b);
    printf("a: %d, b: %d\n", a, b);

    return 0;
}
