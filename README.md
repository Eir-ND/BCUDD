# PROYECTO 1: Algoritmo de Sistema de Costos.

# Tabla de Contenidos
- [Planteamiento](#planteamiento)
- [Requerimientos del proyecto](#requerimientos-del-proyecto)
- [Paso a paso de la solución](#paso-a-paso-de-la-solución)
- [Solución completa](#solución-completa)


## Planteamiento

Este proyecto se resuelve mediante la creación de un algoritmo para un control de costos para una tienda, en el cual permita obtener `valores de descuentos` realizados en función de condiciones específicas a partir de un precio base del producto.

A continuación se detallará el paso a paso del algoritmo para, posteriormente, entregar la totalidad del código y así poder simular en `PSEINT`.

## Requerimientos del proyecto

- Leer el precio original del producto.
- Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
- Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
- Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
- Calcular el costo de envío basado en el destino y el peso del paquete.
- Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
- Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).

De acuerdo con los requisitos del proyecto, el algoritmo deberá realizar lo siguiente:

- Leer el precio original del producto: $100
- Aplicar el descuento del cupón: 10% de descuento, es decir, el precio con descuento será $90.
- Aplicar el IVA: 12% del precio con descuento, es decir, $90 * 1.12 = $100.80.
- Aplicar el descuento por cantidad (2 pares de zapatos): 5% de descuento, es decir, $100.80 * 0.95 = $95.76.
- Calcular el costo de envío basado en el peso y el destino: $10 (costo fijo) + $2 * 3 kg = $16.
- Calcular el costo final del producto: ($95.76 * 2) + $16 = $207.52.

Al final, el algoritmo deberá mostrar el costo final del producto ($207.52) y desglosar sus componentes: descuento, impuestos, descuento por cantidad y costo de envío.

## Paso a paso de la solución

1. En primer lugar se definen las variables y constantes a utilizar, en este caso se utilizará un `array unidimensional` para organizar los datos finales solicitados y las constantes con valores previamente indicados en el enunciado.

```scss
// Definimos la variable
Definir datos como real

// La dimensionamos como un arreglo unidimensional de largo 6
Dimension datos[6]

// Asignamos las constantes
costoFijoEnvio = 10
iva = 0.12
descCant = 0.05
```

2. Solicitamos al usuario que ingrese el precio del producto.

```scss
Escribir "Ingrese el precio original del producto:"

// Almacenamos dato en la variable 1 del array
Leer datos[1]
```

3. Aplicar el % de descuento según tiene o no un cupón.

```scss
// Este ciclo `repetir` se utiliza para que el usuario de una respuesta estipulada "S" o "N" para continuar el proceso
Repetir
	Escribir "¿Tiene un cupón de descuento? (S/N):"
	Leer respuestaDescuento
Hasta Que respuestaDescuento = "S" | respuestaDescuento = "N"

// Si la respuesta es "S" solicitamos al usuario que ingrese el % de descuento
si respuestaDescuento == "S" Entonces
	Escribir "Ingrese el porcentaje de descuento:"
	Leer porcDesc
// Calculamos el valor del descuento y lo almacenamos en la variable 2 del array
	datos[2] <- (datos[1] * porcDesc) / 100
SiNo
	datos[2] <- 0
FinSi
```

4. Con los datos ya obtenidos el algoritmo calcula de manera interna lo siguiente.

```scss
// Valor con descuento aplicado
descAplicado <- datos[1] - datos[2]
	
// Calculamos el valor del iva y lo almacenamos en la variable 3 del array
datos[3] <- descAplicado * iva

// Calculamos valor con IVA %12 aplicado para utilizarlo en los siguientes pasos
valorConIVA <- descAplicado + datos[3]
```

5. Calculamos el descuento de 5% (valor fijo) según la cantidad de productos del cliente.

```scss
Escribir "Ingrese la cantidad de productos a comprar:"
Leer cantidad
Si cantidad > 1 Entonces

// Calculamos el valor del descuento y lo almacenamos en la variable 4 del array
	datos[4] <- valorConIVA * descCant

// Con la variable anterior, aplicamos el descuento y almacenamos el resultado en una variable
	descPorCantidad <- valorConIVA - datos[4]
Sino
	descPorCantidad <- valorConIVA
Fin Si
```

6. Calculamos el valor del envío con un costo fijo de envío de $10 y un valor de $2 por kg de paquete.

```scss
// Solicitamos al usuario que ingrese el destino de despacho
Escribir "Ingrese el destino del envío:"
Leer destino

// Solicitamos al usuario que ingrese el peso total del paquete en kg 
Escribir "Ingrese el peso total del paquete (en kg):"
Leer peso

// Calculamos el valor total del envío y lo almacenamos en la variable 5 del array
datos[5] <- costoFijoEnvio + (peso * 2)
```

7. Calculamos precio final del producto.

```scss
// Almacenamos el precio final en la variable 6 del array
datos[6] <- (descPorCantidad * cantidad) + datos[5]
```

8. Con los datos recopilados realizamos el desglose del costo final del producto.

```scss
// Imprimimos en pantalla el desglose del precio con los descuentos e impuestos aplicados, llamando cada variable almacenada en el array según corresponda en cada item, para un mayor orden
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
```

## Solución completa

Se presenta el pseudocódigo en su totalidad para ser utilizado en `PSEINT`.

```scss
Algoritmo ControlCosto

	Definir datos como real
	Dimension datos[6]

	costoFijoEnvio = 10
	iva = 0.12
	descCant = 0.05
	
	Escribir "Ingrese el precio original del producto:"
	Leer datos[1]
	
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
    
	descAplicado <- datos[1] - datos[2]
	
	datos[3] <- descAplicado * iva
	valorConIVA <- descAplicado + datos[3]
	
	Escribir "Ingrese la cantidad de productos a comprar:"
    Leer cantidad
    Si cantidad > 1 Entonces
		datos[4] <- valorConIVA * descCant
		descPorCantidad <- valorConIVA - datos[4]
    Sino
        descPorCantidad <- valorConIVA
    Fin Si

	Escribir "Ingrese el destino del envío:"
    Leer destino
    Escribir "Ingrese el peso total del paquete (en kg):"
    Leer peso
    datos[5] <- costoFijoEnvio + (peso * 2) 
	
	datos[6] <- (descPorCantidad * cantidad) + datos[5]
	
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
