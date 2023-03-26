#Questo template è da seguire sempre
#Calcolare la media di due numeri interi pari
#Calcolare il valore della media aritmetica
.globl _start

.text

_start: 
	# Ricorda : x sta per BASE 16!
	# Media di pari utilizzando divisione intera e calcoli il valore della
	# media aritmetica
	# Utilizzare lo SHIFT DESTRO!
	# x5, x6 e inserire in x7
	addi x5, x0, 10 #Load x5 e x6 nei registri
	addi x6, x0, 2
	#sommo in x7
	add x7, x5, x6
	srai x7, x7, 1 # metto 1 perchè sarebbe 2^1 cioè 2, quindi (8+2) / 2 = 5 
	#Quindi in x7 avrò : 0x0000000005 

#env call to terminate the program
exit:
	addi x17, x0, 10 # call number 10 = exit
	ecall