import pyodbc
import json

def cargar_configuracion():
    """Carga la configuración de conexión desde el archivo JSON"""
    with open('Conecction.json', 'r') as file:
        config = json.load(file)
    return config

def verificar_conexion():
    """Verifica la conexión a la base de datos ejecutando un SELECT simple"""
    try:
        # Cargar configuración
        config = cargar_configuracion()
        
        # Establecer conexión
        print("Conectando a la base de datos...")
        conexion = pyodbc.connect(config['connection_string'])
        cursor = conexion.cursor()
        
        # Ejecutar SELECT de verificación
        cursor.execute("SELECT @@VERSION AS version")
        resultado = cursor.fetchone()
        
        print("✓ Conexión exitosa!")
        print(f"Versión de SQL Server: {resultado[0][:100]}...")
        
        # Cerrar conexión
        cursor.close()
        conexion.close()
        
        return True
        
    except pyodbc.Error as e:
        print(f"✗ Error de conexión: {e}")
        return False
    except FileNotFoundError:
        print("✗ Error: No se encontró el archivo Conecction.json")
        return False
    except Exception as e:
        print(f"✗ Error inesperado: {e}")
        return False

if __name__ == "__main__":
    verificar_conexion()
