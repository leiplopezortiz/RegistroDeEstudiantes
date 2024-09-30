//Registro de menú en una función
Funcion opc=menu
	Escribir 'Ingrese la opcion del proceso que deseea realizar'
	Escribir '1. Registrar estudiante'
	Escribir '2. Registrar notas parciales'
	Escribir '3. Registrar inasistencias'
	Escribir '4. Lista de estudiantes con sus notas parciales y su nota final'
	Escribir '5. Retornar al menú principal'
	Escribir '6. Salir'
	Leer opc
Fin Funcion
//Registro de estudiantes
Funcion Estudiantes(codigo,nombre)
	Dimension Estudiante[10,3]
	Escribir 'Ingrese el código'
	Leer codigo
	Escribir 'Ingrese el nombre del estudiante'
	Leer nombre
	Escribir 'Su estudiante es: ', codigo,' ' nombre
	Escribir '--------------------------------------------------'
Fin Funcion
//Registro de notas
Funcion Notas(nota1, nota2, nota3)
	Dimensionar nota[10,3]
	Escribir 'Ingrese la primera nota'
	Leer nota1
	Escribir 'Ingrese la segunda nota'
	Leer nota2
	Escribir 'Ingrese la tercera nota'
	Leer nota2
	notaparcial=(nota1+nota2+nota3)/3
	Escribir 'Su nota parcial es: ', notaparcial
	Escribir '--------------------------------------------------'
FinFuncion
//Registro de inasistencias
Funcion inasistencias(faltas)
	Escribir 'Ingrese la cantidad de fallas del estudiante'
	Leer faltas
	si faltas>=10 y faltas<15 Entonces
		notafalta=0.5
		Escribir 'Su descuento de nota es de: ', 0.5
	SiNo
		si faltas>=15 Entonces
			Escribir 'Su descuento de nota es de: ', 1
			notafalta=1
			Si faltas<10 Entonces
				Escribir 'No tiene descuentos por fallas'
			FinSi
		FinSi
	FinSi
	Escribir '--------------------------------------------------'
FinFuncion
//LIsta de estudiantes
Funcion Listar(codigo, nombre, nota1, nota2, nota3, inasistencia, final)
	EScribir 'La lista es:'
	Escribir 'COD', '||', 'NOMBRE', '||', 'NOTA 1','||','NOTA 2','||','NOTA 3','||','INASISTENCIA','||','NOTA FINAL'
	Escribir codigo, estudiante, nota1, nota2, nota3, notafalta, notaparcial,notafinal
FinFuncion

//Calculo nota Final
Funcion FinalParcial
	notafinal=notaparcial-notafalta
	Escribir 'su nota parcial es: ',notafinal
	Escribir '--------------------------------------------------'	
FinFuncion

Algoritmo lista
	Definir codigo Como Entero
	Definir nombre Como Caracter
	i=1
	Repetir
		opc = menu
		Segun opc Hacer
			1:
				Escribir 'INGRESO DE ESTUDIANTES'
				Estudiantes(código,nombre)
			2:
				Escribir 'INGRESO DE NOTAS DEL ESTUDIANTE'
				Notas(nota1, nota2, nota3)
			3:
				Escribir 'INGRESO NUMERO DE FALLAS'
				inasistencias(faltas)
			4:
				//Escribir codigo, nombre, nota1, nota2, nota3, faltas, notaparcial, notafinal
				Escribir codigo
				Escribir nombre
				Escribir nota1
				Escribir nota2
				Escribir nota3
				Escribir notafalta
				escribir notaparcial
				Escribir notafinal
		Fin Segun
	Hasta Que opc=6
	
FinAlgoritmo
//Dimensionar //arr
//menú opciones planteadas
// cada que se ejecute la acción, regresar al menú (opcion 0 o 5)
