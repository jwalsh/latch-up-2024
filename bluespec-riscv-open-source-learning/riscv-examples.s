.text
.globl main
main:
    addi a0, zero, 5
    addi a1, zero, 3
    jal ra, addition
    j end
addition:
    add a0, a0, a1
    jr ra
end:
    nop
