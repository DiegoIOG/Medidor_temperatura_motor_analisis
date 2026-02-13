import serial
import time
import pyodbc

# ---------- SERIAL ----------
puerto = "COM4"
baudrate = 9600
arduino = serial.Serial(puerto, baudrate)
time.sleep(2)

# ---------- SQL SERVER ----------
conn = pyodbc.connect(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=localhost\SQLDEV;"
    "DATABASE=ETL_project;"
    "Trusted_Connection=yes;"
)

cursor = conn.cursor()

print("Iniciando ETL Sensor → SQL Server...")

while True:
    linea = arduino.readline().decode().strip()

    if linea == "ERROR":
        print("Lectura fallida...")
        continue

    temp, hum = linea.split(",")

    print(f"Temp={temp}°C Hum={hum}%")

    # Insertar en SQL Server
    cursor.execute(
        "INSERT INTO SensorData (temperatura, humedad) VALUES (?, ?)",
        float(temp), float(hum)
    )

    conn.commit()
    print("Datos guardados en SQL Server ✅")

    time.sleep(10)  # cada 10 segundos