#Somma di due numeri in Assembly Language
.globl _start


.text

_start:
	addi x5, x0, 40 #Inizializzo il primo numero
	addi x6, x0, 50 #Inizializzo il secondo numero
	add x7, x0, x5 # Sommo in x7 il valore di x5 (40)
	add x7, x7, x6 # Sommo ad x7 (che contiene x5) il valore di x6 (50) = contiene 90
	#Il risultato dovrebbe essere 90 che in esadecimale corrisponde a 5A (OK)
#env call to terminate the program
exit:
	addi x17, x0, 10 # call number 10 = exit
	ecall