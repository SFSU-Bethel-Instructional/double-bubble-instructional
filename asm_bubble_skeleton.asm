# this is a comment
# put your name here
# put your course #, assignment number here
# put the date here
#
# put a 1 sentence description here: this is a sample MIPS asm file containing a 10-element integer array and a line of code to load 1st item

.data
arr:	.word	10, 9, 8, 7, 6, 5, 4, 3, 2, 1    # this is the source data array, please fill with your own random numbers from https://www.calculator.net/random-number-generator.html
n:	.word	10     # hard-coded problem size n=10
msg:	.asciiz "The problem size is : "

.text
.globl main
main:

# print a string
	li	$v0, 4   # opcode to print a string to the console
	la	$a0, msg
	syscall
	
# print the value of the $t0 register
	li	$v0, 1	# opcode to print an int to the console
	lw	$a0, n
	syscall
	
# EOF