// Tested with GCC 4.9.1
// Compiled with:
// $ gcc --std=gnu99 eachit2.c 
#include <stdio.h>

#define EACH_IT(array)                                  \
    for (typeof(*array)* it = array;                    \
       it != array + sizeof(array)/sizeof(array[0]);    \
       it++)

int main() {
  int my_array[3] = { 1, 2, 3 };
  EACH_IT(my_array) {
    printf("%d\n", *it);
    printf("%d\n", *it * 10);
  }
}
