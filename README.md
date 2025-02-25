# Filtro FIR de 4 orden VHDL

Tomé el ejemplo del filtro FIR que vienen el el libro de electronica digital y logica programable de Troncoso.
Edité el diseño para hacerlo más optimizado ahorrando un par de ciclos de reloj.

![image](https://github.com/user-attachments/assets/b47a8a49-ed06-45d6-8303-a946b4ba8f84)
![image](https://github.com/user-attachments/assets/d91bb32a-f74f-4515-9b15-73374cd954f6)
![image](https://github.com/user-attachments/assets/fc204321-3fb8-424f-a09b-c25dd874c956)
![image](https://github.com/user-attachments/assets/a0110dd6-4556-4c32-84c7-437225c26b01)
![image](https://github.com/user-attachments/assets/038c6349-ff3f-4f5d-b0cb-2d0f6523a3d5)

En la maquina de estados cambie que EOF solo sea 1 en el utimo estado, además que en el utimo estado en vez que el contador se mantenga, este se vuelve a cargar.
Agregé un nuevo estado para que cuando se esté en el ultimo estado donde dispare el EOF si STF esta en 0 se pase a el segunso estado, esto es para ahorrarnos un ciclo de reloj, ya que si es contador pasara al estado 1 el contador se volverá a cargar, lo que ya se hizo en el último estado.

![image](https://github.com/user-attachments/assets/217bf6ae-ad3b-4d7b-908a-f80b1fc4a91c)
![image](https://github.com/user-attachments/assets/7b8995c5-0a66-4b40-add0-ad0124e94c72)

En esta maquina de estados quité la señal LDR y la sustituí por el EOF, así haciendo que la maquina de estados solo tenga dos estados solamente para el RDY, (CREO QUE ESTA MAQUINA DE ESTADOS SE PUEDE QUITAR SI NO SE OCUPA EL RDY!!! esto es porque el EOF y el STF harían todo y esa maquina de estados solo hace la funcion de RDY pero para eso se podía utilizar el EOF directamente). 

![image](https://github.com/user-attachments/assets/09450fbb-d026-45a6-bf3b-d8a19475ad7c)

le quité el maquina de estados y funcina bien, en este ejemplo la entrada es de 18 bits en formato 2.16 signado y se multiplica por coeficientes unitarios de 36 bits con formato 2.34 signados, introduzco un 0.25 decimal (00.01000...) y como se multiplica por 1 y se suma 5 veces el resultado es 1.25 decimal (01.0100....) el resultado se obtiene en 18 bits como en la entrada. como se ve en la simulación el resultado es correcto.

Una vez realizada la simulación, comenzaré con la implementacion, usaré un ADC AD9201

![image](https://github.com/user-attachments/assets/eeb7a07d-18ed-4126-b2cf-0c4f64f2b35b)
![image](https://github.com/user-attachments/assets/833ab65f-f47e-4f58-b23c-c99b0e13800f)

ycomo salida del sistema utilizaré un DAC DAC7564

![image](https://github.com/user-attachments/assets/012550f1-02d0-409d-b64c-d92459782bb8)

como el ADC es de 10 bits y el dac de 12, tendré que escalar de alguna forma la salida del sistema. Creo que sería bueno hacer que los 2 bits menos significativos del dac sea una cosntante de "00" así que cuando la entrada del adc sea 0 el dac de un voltaje de 0V y cuando la entrada sea maxima el voltaje del dac sea el maximo-3LSB y así lograr de alguna forma centrar la señal de salida.
El Dac cuenta con una referencia de 2.5V pero se puede cambiar, al parecer la del la refeerencia del adc no se puede cambiar solo puede ser o 1V o 2V por defecto, entonces se podría utilizar una refenrenca de 2V tanto para el adc como para el dac asíendo así un LSB de 1.95mV para el adc y 0.49mV para el dac por lo que para cada LSB del adc el dac tiene que sacar 4 para tener la misma salida.

Pensandolo bien, mejor hacemos que la cosntante sea "01" para que el filtro tenga cierto "juego" hacia abajo tambien no solo hacia arriba y haciendo que los cieficientes del filtro sea de 12 bits puede que este "juego" hacia arriba y hacia abajo pueda servir de algo a la salida.

Ahora que ya qued[o un poco mas claro como se va a implementar el filtro necesito cambiar el codigo para que funcione a 10 bits de entrada y 12 de salida.

en la version 1.2 traté de hacer que la mistitplicacion sea de 11 x 13 bits el bit extra de la entrada es para que simule el signo del valor de 10 bits al gunal que el nuevo bit de voeficiente, solo lo probé en el mac y parece que funciona bien, quedando a la salida los 12 bits que iran al dac, la prueba lo hice con punto flotante 2.9 para la entrada y 2.11 para la salida los coeficientes los tengo como la unidad.

![image](https://github.com/user-attachments/assets/0e1976b9-9b6e-4bed-83af-b5c08843dd82)

el filtro con coeficientes 1 hace lo que debería de hacer. ahora falta agregar las partes del control del adc y del dac. para luego hacer una prueba fisica con esos coeficientes y porteriormente encontrar coefienstes para hacer que el filtro sea funcional. aun no se que clase de filtro será solo estpy trabaando en el firmware y la implementacion en fisico.
 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Agregué un codigo que anteriormente había realizado para el DAC que voy a utilizar para ver como funciona, me faltaría ahora hacer un codigo para el ADC solamnte y unir todo, el ADC en su hoja de datos viene este diagrama,

![image](https://github.com/user-attachments/assets/55ea225a-dc44-4f3b-a52d-a0892a49ef61)

donde nos dice que cuando comience la primera conversión de datos, nos tenemos que esperar 3 cliclos de reloj para que el adc nos de el primer dato, despues de los 3 ciclos ya podemos capturas los datos del adc en cualquiera de los 2 canales, estos datos estará por ende retrasados 3 ciclos de reloj. vamos a intentar hacer la captura de datos lo mas rapido posible por lo que la hora de datos nos dice que

![image](https://github.com/user-attachments/assets/1503e406-820e-4802-8a35-fc974ff66d4c)

el ciclo de reloj debe ser por lo menos de 45ns 22.5ns arriba y 22.5ns abajo, por lo que la frecuencia del reloj teiene que ser un maximo de 22.22..Mhz que es lo que nos dice el fabricante. usaré un reloj de 20Mhz para hacerle caso al fabricante, pero antes de eso necesito saber a que velocidad puedo escribir datos en el dac ya que si el dac no puede enviar datos tan rapido se hará un cuello de botella ya que el adc leerá mas datos que los que el adc puede escribir. pero antes de eso tengo que ver a que volocidad se harás las multiplicaciones así si yo leo un dato del adc este tiene que pasar por el filtro y luego se tiene que ecribir en el dac, creo que lo mas lento del sistema será el dac, bien, empecemos con lo que ya tenemos.

numero de ciclos de reloj que le toma al filtro son 5 ciclos de reloj, despues de los primeras 5 operaciones el filtro comenzará a funcionar, el filtro tomará un dato del adc cada 5 ciclos de reloj y 5 ciclos de reloj después el dará una salida de 12 bits que el adc tendrá que recibir y escribir a su salida.

para que no exista un cuello de botella a cada entrada tiene que haber una salida por lo que el tiempo que lee el adc mas el tiempo del filtro mas el tiempo de escritura nos darán el tiempo nimimo total del sistema, y su inversa la frecuencia maxima.

al dac se le tienen que enviar 24 bits de los cuales 8 son de configuracion y 12 son para la salida y 3 no importan, en mi codigo le habia puesto como configuracion 00010000 este cmonado de control registra la entrada y la carga en el canal 0, me dicuenta que mi diseño anterior estaba mal en la arte de que aparte que le decia al dac con ese comando de cargara y escribiera le estaba diciendo por la entrada de load que volviera a carga, por lo que estaba cargando 2 veces.

el SPI es polaridad 1, fase 0,

utilizando en codigo spi que encontre en intenernet pude hacer que la escritua del dac durara 49 ciclos de reloj. por lo que será la parte mas lenta del sistema. ahora bien, recapitulando

en 1 ciclo de reloj se lee un dato por el adc
en 5 ciclos de reloj se procesa el dato y se obtiene una salida
y en 49 ciclos de reloj se escribe una salida.

en este punto si utilizo el reloj máximo para el adc de 20MHz reloj del filtro necesitoará ser 5 veces mas rapido osea 100Mhz pero el reloj del dac necesitará ser 49 veces mas rapido 980Mhz lo que es imposible ya que la transmision maxima a la que puedo enviar los bits al adc es de 50Mhz.

entonces el proceso se tiene que hace tokando en cuanta la parte mas lemta, si escribo a 50Mhz redondearemos a que para ecribir cada dato el dac necesitará de 500ns por lo que el dac necesitara un reloj de 100Mhz, el reloj de fir deve ser 5 veces menos o sea 20Mhz para que en 500ns el ya tenga un resultado, m1entras que para el adc de igual forma le tiene que dar un valor al fir cada 500ns por lo que se utilizará un reloj de 2Mhz.

cada (1/(2 Mhz))=500ns el adc lee un dato, se lo da al filtro este lo procesa en (5/10Mhz)=500ns y le pasa el dato al dac mietras el filtro calcula el siguiente punto, el dac tarda (50/100Mhz)=500ns es escribir el voltaje, por lo tanto el adc estaría muestreando a 2Mhz, y el dac estaría escriubiendo de igual forma a 2Mhz con un retraso de 1us que es lo que tarda e calcular lo datos y escribirlos.

todo est[a mal vuelve a checar los tiempos, realice una maquina de estados mejor para ocntrolar todo, mas sencillo.

ya se solucionó todo al parecer, usaré un pll para alimentar la fpga con un clock de 100Mhz lo que hará que un ciclo de entrada y salida tarde 590ns, de lo unico que me precupé son los timepos, el clock con el quer alimento al adc no es simétrico, lo genera una fsm pero cumple con las caracteristicas de la hoja de datos, al igual que el spi, llego al sclock máximo de 50mhz, la hoj de datos dice que neceito un componente para lograr que funiona con esas volocidades pero lo intentaré así, todo lo demás parece funcionar correctamente, le quité la salida load del dac ya que con la configiracion será suficiente.

mañana intentaré programar todo y hacerlo en físico ya que la simulacion funciona.

hoy voy a utilizar una de2-115 que tiene un cyclone IV par la implementacion, empezaré por sintetiza el codigo para configurar la fpga.
ya se hizo la sitentizacion y casi termino la conexxiones a las fpga, mañana termino de conectar y hago la primera prueba,

el filtro ya funciona fisicamente parece que la frecuencia de muestre quedó el 1/590ns=1694915.254237288 Hz ahora bien, comenzaremos con el diseño del filtro el matlab
utilizando la herramienta filterDesigner en matlab colocamos el tipo de filtro la frecuencia de muestre y la de corte y el tipo de filtro y le damos a diseñar filtro

![image](https://github.com/user-attachments/assets/b93aa8e9-8ae2-4300-97ec-ccef00ff0740)

pare que un filtro de orden 4 no funciona muy bien, intentaré cambiar a un filtro de orde 50 que es como se muestra a continuacion

![image](https://github.com/user-attachments/assets/4e7c92c2-900f-4d2d-90bf-aeacaee88beb)

redondee la frecuencia de muestreo en 1/600ns o 1.666666MHZ eso lo hice con las maquina de estados de del RTF, lo que paso ahora es que la entrada y la salida se desfasan.  




