.data


.text
	#start with value of 1 
	li $t0,1

	#keep shifting by 1 (shift bits to left and put a zero on the end ) 1 becomes 10 in binary
top:	
	sll $t0,$t0,1
	j top

