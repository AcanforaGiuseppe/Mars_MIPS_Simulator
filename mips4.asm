.text
li $v0, 1
li $a0, 0xdeadbeef
syscall
la $a0, hello
li $v0, 4
syscall
nop
li $t1, 0x80102030
lw $t2, 0($t1)
nop
loop:
j loop
nop

.data
hello:
.asciiz "ciao"

.ktext 0x80000180
addiu $t4, $t4, 1
mfc0 $t5, $14
addiu $t5, $t5, 4
mtc0 $t5, $14
eret
nop