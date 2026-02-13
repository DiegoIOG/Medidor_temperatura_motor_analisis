SELECT 
    id,
    temperatura,
    LAG(temperatura) OVER (ORDER BY fecha) AS temp_anterior,
    temperatura - LAG(temperatura) OVER (ORDER BY fecha) AS diferencia
FROM SensorData;