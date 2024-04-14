Algoritmo ControlCosto
	
	Definir datos como real
	Dimension datos[6]

	costoFijoEnvio = 10
	iva = 0.12
	descCant = 0.05
	
	Escribir "Ingrese el precio original del producto:"
	Leer datos[1]
	
	// Valor descuento por cupón
	Repetir
		Escribir "¿Tiene un cupón de descuento? (S/N):"
		Leer respuestaDescuento
	Hasta Que respuestaDescuento = "S" | respuestaDescuento = "N"
	
	si respuestaDescuento == "S" Entonces
		Escribir "Ingrese el porcentaje de descuento:"
        Leer porcDesc
		datos[2] <- (datos[1] * porcDesc) / 100
	SiNo
		datos[2] <- 0
	FinSi
    
	// Valor con descuento aplicado
	descAplicado <- datos[1] - datos[2]
	
	// Calcular valor con IVA %12
	datos[3] <- descAplicado * iva
	valorConIVA <- descAplicado + datos[3]
	
	//Descuento por cantidad (5%)
	Escribir "Ingrese la cantidad de productos a comprar:"
    Leer cantidad
    Si cantidad > 1 Entonces
        datos[4] <- valorConIVA * descCant
		descPorCantidad <- valorConIVA - datos[4]
    Sino
        descPorCantidad <- valorConIVA
    Fin Si
	
	//Costo envío ($10 costo fijo y $2 por kilo de peso)
	Escribir "Ingrese el destino del envío:"
    Leer destino
    Escribir "Ingrese el peso total del paquete (en kg):"
    Leer peso
    datos[5] <- costoFijoEnvio + (peso * 2) 
	
	//Costo final producto
	datos[6] <- (descPorCantidad * cantidad) + datos[5]
	
	//Desglose costo final
	Escribir "--------------------------------------------------------"
	Escribir "Costo final del producto con envío a ", destino, ":"
	Escribir "--------------------------------------------------------"
    Escribir "Precio original: $", datos[1]
    Escribir "Descuento: $", datos[2]
    Escribir "Impuestos (IVA %12): $", datos[3]
    Escribir "Descuento por cantidad: $", datos[4]
    Escribir "Costo de envío: $", datos[5]
    Escribir "Total a pagar: $", datos[6]
	Escribir "--------------------------------------------------------"

FinAlgoritmo
