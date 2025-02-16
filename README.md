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
