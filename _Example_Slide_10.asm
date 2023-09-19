.data
# the C code looks like this:
# g = h + A[8]

#create an array of words (integers) and label it A - note: A[0] is the first value which is a 1 here, the 8th (zero index) is 9
A: .word 1,2,3,4,5,6,7,8,       9,       4095,4095,4095,4095


.text
	#initialize the value of h to 5 
	li $s2,5

	#load the address of the array A into a register
	la $s3,A

	#get the memory value that is 8 words away from the base address - words are 4 bytes - so 4 * 8 = 32 byte offset
	lw $t0,32($s3)

	#add the constant plus the 8th item in the array
	add $t0, $s0,$t0

	#store the results from the add into the 12th slot of array A
	sw
	#print the value  - should be a 5 + 9 = 14 which is hex e
	li $v0,1
	move $a0,$t0
	syscall