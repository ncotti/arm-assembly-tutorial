.global _start
.extern _stack_addr
.extern add9
.extern main

.text
_start:
    ldr sp, =_stack_addr
    mov r0, #1
    mov r1, #2
    mov r2, #3
    mov r3, #4
    mov r4, #5
    mov r5, #6
    mov r6, #7
    mov r7, #8
    mov r8, #9
    // Pushing arguments 5 to 9 into the stack
    // r12 is caller saved, but also aligns the stack to 8bytes.
    push {r4-r8, r12}
    blx add9     // r0 = 1 + 2*2 + 3*3 + 4*4 + 5*5 + 6*6 + 7*7 + 8*8 + 9*9 = 285
    add sp, sp, #24 // Clear stack 4*6 = 24
    ldr r0, =main
    bx r0


.text
.type add6_from_asm, %function // MANDATORY, or won't work
.global add6_from_asm
add6_from_asm:
    add r0, r0, r1
    add r0, r0, r2
    add r0, r0, r3
    ldr r1, [sp]        // Access argument 5
    add r0, r0, r1
    ldrb r1, [sp, #4]   // Access argument 6, it's a char, 1 byte
    add r0, r0, r1
    mov pc, lr
