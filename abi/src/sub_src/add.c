#include "add1.h"
#include "add2.h"

int __attribute__((section(".text")))add9(int a, short b, char c,
    int d, int e, int f, unsigned int g, unsigned char h, int i) {
    return a + TWO*b + THREE*c + FOUR*d + 5*e + 6*f + 7*g + 8*h + 9*i;
}

int main(void) {
    int a;
    a = add6_from_asm(3, 5, 7, 9, 11, 13);  // Result: r0 = 48
    a++;
    a++;
}