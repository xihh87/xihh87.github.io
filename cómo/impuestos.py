#!/usr/bin/env python
precio_servicio = float(input(""))
mas_iva = precio_servicio * 1.16
ret_iva = 0.106667 * precio_servicio
print(f"iva: {ret_iva}")
ret_isr = 0.1 * precio_servicio
print(f"isr: {ret_isr}")
retenciones = ret_iva + ret_isr
enviado = mas_iva - retenciones

print(enviado)


print(f"enviadoenviado: {precio_servicio / (1 + 0.16 - 0.106667 - 0.1)}")
