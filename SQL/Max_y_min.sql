SELECT 
    MAX(temperatura) AS temp_max,
    MAX(humedad) AS hum_max,
    MIN(temperatura) AS temp_min,
    MIN(humedad) AS hum_min
FROM SensorData;

