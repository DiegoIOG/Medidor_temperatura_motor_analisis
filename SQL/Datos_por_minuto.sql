SELECT 
    FORMAT(fecha, 'yyyy-MM-dd HH:mm') AS minuto,
    AVG(temperatura) AS temp_avg,
    AVG(humedad) AS hum_avg
FROM SensorData
GROUP BY FORMAT(fecha, 'yyyy-MM-dd HH:mm')
ORDER BY minuto;