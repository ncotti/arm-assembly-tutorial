.global _start

.text
_start:
    nop
    B main

main:
    nop
    
.data
    str: .ascii "Hello"
    .balign 4
    x: .word 0x44
    
.bss
    vector: .space 4096
    