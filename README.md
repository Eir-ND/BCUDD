# PROYECTO 1: Algoritmo de Sistema de Costos.

##Planteamiento

Este proyecto se resuelve mediante la creación de un algoritmo que permita realizar un control de costos para una tienda, en el cual permita obtener valores de descuentos realizados en función de condiciones específicas a partir de un precio base del producto.

A continuación se detallará el paso a paso del algoritmo para, posteriormente, entregar la totalidad del código y así poder simular en PSEINT.

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

1. En primer lugar se definen los datos a utilizar, en este caso se utilizará un array para organizar los datos finales solicitados, por lo que se define y se dimensiona.

´´´
Definir datos como real
Dimension datos[6]
´´´

2. Definir constantes con valores 
