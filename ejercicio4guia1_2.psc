Algoritmo empresa
	Definir pasajes_reservados, cantidad_pasajeros, unidades_utilizadas, asientos_vacios Como Entero
    Definir asientos_por_unidad, reservamenor, reservajubilado, pasajeros_descuento Como entero
    Definir precio_pasaje, recaudacion_total, recaudacion_sin_bonificacion, recaudacion_promedio_pasajero, recaudacion_promedio_unidad Como Real
	definir sindescuento, descuentojubilado, descuentomenores Como Real
	//datos de entrada
	Escribir "Bienvenido, ingrese el precio del pasaje a calcular para de esta semana"
	Leer precio_pasaje
	escribir "Cuantos pasajes se resevaron? Recuerde, no pueden ser menos de 42"
	leer pasajes_reservados
	//instruccion mientras porque si dejo 42 fijo se me caen los calculos
	mientras pasajes_reservados<42 Hacer
		escribir "No se hacen viajes por menos de 42 reservas"
		escribir "Ingrese nuevamente"
		leer pasajes_reservados
	FinMientras
	Escribir "Ingrese cuantas reservas se hicieron para jubilados y cuantas para menores de 12 años, en ese orden"
	leer reservajubilado, reservamenor
	//calculos de salida
	//aca le pedi ayuda a chatgpt (no voy a mentirle) me falta cancha para matematica asi sea una boludez
	pasajeros_descuento = reservajubilado+reservamenor
	cantidad_pasajeros= pasajes_reservados+pasajeros_descuento
	recaudacion_sin_bonificacion=cantidad_pasajeros*precio_pasaje//recaudacion sin bonos
	unidades_utilizadas=redon((cantidad_pasajeros/42)+0.5)//unidades utilizadas
	asientos_por_unidad=unidades_utilizadas*42
	asientos_vacios=asientos_por_unidad-cantidad_pasajeros//asientos vacios
	descuentojubilado=(reservajubilado*precio_pasaje)*0.30
	descuentomenores=(reservamenor*precio_pasaje)*0.30
	sindescuento=pasajes_reservados*precio_pasaje
	recaudacion_total=sindescuento+descuentojubilado+descuentomenores//recaudacion con descuentos
	recaudacion_promedio_pasajero=recaudacion_total/cantidad_pasajeros
	recaudacion_promedio_unidad=recaudacion_total/unidades_utilizadas

	escribir "la recaudacion total es de : $", recaudacion_total
	escribir "La recaudacion total sin bonificacion es: $ ",recaudacion_sin_bonificacion
	escribir "La cantidad de unidades utilizadas son: " ,unidades_utilizadas
	escribir "La cantidad de asientos vacios son: " ,asientos_vacios
	escribir "La recaudación promedio por pasajero es: $",recaudacion_promedio_pasajero
	escribir "La recaudacion promedio por unidad es: $" ,recaudacion_promedio_unidad
	
	
FinAlgoritmo
