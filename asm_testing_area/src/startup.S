#include "header.h"

.global _start
.type _start, %function
.text
_start:
    ldr sp, =_stack_addr

    // Put here your Assembly code
    ldr r1, =0x11223344
    ldr r2, =0x55667788
    uadd8 r0, r1, r2    // r0 = 0x6688AACC

    b main
