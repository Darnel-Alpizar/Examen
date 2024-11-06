Algoritmo Cajeroexam
	definir us,cont,arreglo como caracter
	definir num,contador,depos,saldo,retiro Como Entero
	
	dimension arreglo[2]
	contador=1
	Mientras contador<=3 Hacer
		escribir "Ingrese el usuario"
		leer us
		escribir "Ingrese la contraseña"
		leer cont
		arreglo[1] = us
		arreglo[2] = cont
		saldo=100
		Si (arreglo[1] = "Coti" o arreglo[1] ="coti") Y arreglo[2] = "GIN" Entonces
			escribir "Acceso valido"
			Repetir
				escribir "1.Depositar dinero a la cuenta"
				escribir "2.Sacar dinero de la cuenta"
				escribir "3.Ver saldo"
				escribir "4.Salir"
				leer num
				
				Si num<=4 Entonces
					Segun num Hacer
						1 :
							escribir "Ingrese cuanto desea depositar"
							leer depos
							saldo=saldo+depos
							escribir"Su deposito fue de ", depos
							escribir "Su saldo actual es de ", saldo
						2 :
							escribir "Ingrese cuanto desea retirar"
							leer retiro
							Si retiro>saldo Entonces
								escribir "Saldo insuficiente"
								
							sino
								Si retiro MOD 1000 = 0  Entonces
									saldo=saldo-retiro
									escribir "Su retiro fue de ",retiro
									escribir "Su saldo actual es de ", saldo
									escribir "Retire sus billetes"
								SiNo
									escribir "El monto debe ser multiplos de 1000"
								Fin Si
								Si retiro >= 5000 Entonces
									montoFinal = retiro - (retiro * 0.01) 
								Sino
									montoFinal = retiro  
								FinSi
								
								Si montoFinal <= saldo Entonces
									saldo = saldo - montoFinal
									finsi
							finsi
						3 :
							escribir "Su saldo actual es de ",saldo
							
					Fin Segun
							
						SiNo si num>4 entonces
								escribir "OPCION NO VALIDA,INGRESE UNA OPCION DEL MENU"
								
							finsi
						Fin Si
			Hasta Que num=4
			contador=4
				Sino si contador = 3 Entonces
						Escribir "Has fallado 3 intentos el sistema se ha bloqueado"
					SiNo
						Escribir "La contraseña u usuario son incorrectos"
					FinSi
					contador = contador + 1
					
					
				Fin Si
	Fin Mientras
FinAlgoritmo
