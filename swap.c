#include <stdio.h>

#define SWAP(x, y) {                            \
        typeof (x) x##y = x;                    \
            x = y;                              \
            y = x##y;                           \
    }

int main() {
    int a = 1;
    int b = 2;
    SWAP(a, b);
    printf("a: %d, b: %d\n", a, b);

    return 0;
}
