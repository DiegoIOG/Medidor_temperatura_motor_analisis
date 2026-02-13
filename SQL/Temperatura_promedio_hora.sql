SELECT 
    DATEPART(HOUR, fecha) AS hora,
    AVG(temperatura) AS temp_promedio
FROM SensorData
GROUP BY DATEPART(HOUR, fecha)
ORDER BY hora;