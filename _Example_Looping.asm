.data
welcome:  .asciiz "Starting looping program\n"
done:	.asciiz "done\n"
linefeed: .asciiz "\n"

.text
	#initialize $t0 for our max value, #t1 is our counter
	li $t0, 10
	li $t1,1

	#print that program is starting
	li $v0,4
	la $a0,welcome	
	syscall
	
			
top:
	#print current value of our counter
	li $v0,1
	add $a0,$zero,$t1	
	syscall
	
	li $v0,4
	la $a0,linefeed	
	syscall
	
	#check if we are the max value yet, if so end
	beq $t0,$t1,end
	

	#increment the counter
	addi $t1,$t1,1
	
	#do it again
	j top
		
	
end:
	#print that we are done
	li $v0,4
	la $a0,done	
	syscall