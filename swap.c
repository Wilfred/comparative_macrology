#include <stdio.h>

#define SWAP(x, y) {        \
        typeof (x) tmp = x; \
        x = y;              \
        y = tmp;            \
    }

int main() {
    int a = 1;
    int b = 2;
    SWAP(a, b);
    printf("a: %d, b: %d\n", a, b);

    float arr[2] = {3.0, 4.0};
    SWAP(arr[0], arr[1]);
    printf("arr[0]: %f, arr[1]: %f\n", arr[0], arr[1]);

    return 0;
}
