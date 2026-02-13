CREATE TABLE SensorData (
    id INT IDENTITY(1,1) PRIMARY KEY,
    temperatura FLOAT,
    humedad FLOAT,
    fecha DATETIME DEFAULT GETDATE()
);
