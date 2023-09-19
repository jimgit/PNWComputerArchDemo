.data


.text
	#if (i==j) f= g+h else f=g-h;


	li $s0,9
	li $s2,5

	li $s3,5
	li $s4,6
	bne $s3,$s4,Else
	add $s0,$s1,$s2
	add $s0,$s1,$s2
	add $s0,$s1,$s2
	add $s0,$s1,$s2
	add $s0,$s1,$s2
	add $s0,$s1,$s2
	add $s0,$s1,$s2
	add $s0,$s1,$s2
Else:	
	sub $s0,$s1,$s2
	
Exit:	