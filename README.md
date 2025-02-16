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

 
