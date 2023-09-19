.data
# the C code looks like this:
# f = (g + h) - (i -j)
.text
	#assign some registers	
	li $s1,10  	#g
	li $s2,6  	#h
	li $s3,3	#i
	li $s4,1	#j

	#do the g+h - should get the result: 16
	add $t0,$s1,$s2
	
	#do the i-j - should get the result 2
	sub $t1,$s3,$s4

	#use the two temporary values to get the final answer - should get the result 14
	sub $s4,$t0,$t1
	
	#print the value
	li $v0,1
	move $a0,$s4
	syscall
