# Filtro FIR de Orden 50 en VHDL

Este proyecto implementa un filtro FIR de orden 50 en VHDL basado en el diseño del libro *Electrónica Digital y Lógica Programable* de Troncoso. Se realizaron optimizaciones en el diseño para mejorar el uso de ciclos de reloj y se llevó a cabo la implementación en una FPGA Cyclone IV.

## Descripción del Proyecto

El diseño original fue modificado para reducir el número de ciclos de reloj, mejorando así la eficiencia del filtro. Además, se realizaron ajustes en la máquina de estados y en la estructura de control para optimizar el flujo de datos.

### Mejoras Implementadas
- **Optimización de la máquina de estados**: Se modificó la señal EOF para activarse solo en el último estado.
- **Reducción de estados innecesarios**: Se eliminó la señal LDR y se utilizó EOF directamente.
- **Conversión de datos**: Se ajustó el formato de entrada y salida para asegurar compatibilidad con los convertidores ADC y DAC.
- **Sincronización de señales**: Se implementaron mecanismos de sincronización para minimizar desfases en la señal de salida.

## Implementación Física

Para la implementación del filtro se utilizaron los siguientes componentes:

- **ADC:** AD9201 (10 bits)
- **DAC:** DAC7564 (12 bits)
- **FPGA:** Cyclone IV (DE2-115)

Dado que el ADC es de 10 bits y el DAC de 12 bits, se realizó un escalado adecuado para mantener la precisión de los datos en la conversión.

## Características del Filtro

- **Frecuencia de muestreo:** 100 kHz
- **Frecuencia de corte:** 1 kHz
- **Orden:** 50
- **Tipo de ventana:** Blackman
- **Implementación:** Multiplicación de 11x13 bits para mantener precisión

### Diseño del Filtro en MATLAB

El filtro fue diseñado utilizando la herramienta `filterDesigner` de MATLAB, generando coeficientes optimizados para el procesamiento en VHDL.

![Diseño del filtro](https://github.com/user-attachments/assets/b93aa8e9-8ae2-4300-97ec-ccef00ff0740)

## Pruebas y Resultados

Se realizaron simulaciones y pruebas físicas para verificar el correcto funcionamiento del filtro.

- **Simulación en MATLAB:** Se probaron diferentes órdenes del filtro, confirmando que un orden de 50 es adecuado para el objetivo del proyecto.
- **Pruebas en FPGA:** Se implementó el código en la DE2-115, validando la correcta conversión de datos y la eliminación de ruido en la señal filtrada.
- **Sincronización:** Se utilizó una señal TTL para sincronizar la entrada del ADC con la captura de datos, minimizando el desfase.

### Resultados Experimentales

A continuación, se presentan algunos de los resultados obtenidos en la implementación:

![Simulación con trigger](https://github.com/user-attachments/assets/c944c37d-fe39-44e5-bd2c-f7e2601150ee)

## Conclusiones

- La optimización de la máquina de estados permitió reducir los ciclos de reloj y mejorar la eficiencia del filtro.
- La implementación física en FPGA validó el correcto funcionamiento del diseño.
- Se logró una frecuencia de muestreo estable de 100 kHz con una frecuencia de corte de 1 kHz.
- El código de MATLAB facilita la generación de coeficientes, permitiendo modificar la respuesta del filtro sin necesidad de cambiar el código en VHDL.

## Próximos Pasos

- Evaluar la implementación de filtros de mayor orden para mejorar la respuesta en frecuencia.
- Implementar una interfaz de configuración en tiempo real para modificar los coeficientes sin necesidad de reprogramar la FPGA.
- Explorar el uso de otros tipos de ventanas para optimizar el filtrado.

---

**Repositorio:** En este repositorio encontrarás el código en VHDL, los scripts de MATLAB y las simulaciones realizadas para validar el diseño. ¡Cualquier contribución es bienvenida!
