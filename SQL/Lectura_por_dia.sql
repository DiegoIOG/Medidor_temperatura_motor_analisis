SELECT 
    CAST(fecha AS DATE) AS dia,
    COUNT(*) AS total_lecturas
FROM SensorData
GROUP BY CAST(fecha AS DATE)
ORDER BY dia DESC;