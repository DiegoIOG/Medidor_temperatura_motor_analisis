# Analisis de sensor para mantenimiento preventivo 

Se realizo la conexion a un arduino  utilizando un sensor DHT11 para poder tomar las medidas del respectivo sensor con esto se trata de medir la condicion del supuesto motor al que esta conectado, de esta manera mediante python se toman las medidas que luego son enviadas a una base de datos la cual recolecta toda la informacion desde la temperatura, humedad hasta el momento en que fue tomada la medida, enseguida se conecta a un power bi que nos muestra los datos del respectivo motor en cuanto temperatura para poder prevenir alguna falla en el motor 

## Tecnologías utilizadas 
-Arduino
-Python
-SQL Server
-Power BI

## Hardware usado 
-DHT11
-Arduino UNO
-Cables macho-macho 

## Arquitectura / Flujo del sistema 

Sensor → Python → SQL → Power BI


## Configuración del proyecto 
-Puerto COM
-Conexión SQL

## Dashboard en Power BI 

