# Sistema de Gestión de Catequesis

Sistema web desarrollado con Flask para la gestión integral de catequizandos, catequistas, parroquias y actividades de catequesis.

## 🚀 Características

- ✅ **Gestión de Catequizandos**: Registro completo, edición y eliminación
- ✅ **Gestión de Catequistas**: Listado y consulta de catequistas
- ✅ **Gestión de Parroquias**: Administración de parroquias
- 📊 **Reportes y Estadísticas**: Visualización de datos en tiempo real
- 🎨 **Interfaz Moderna**: Diseño responsive y amigable
- 🔒 **Validación de Datos**: Validación en cliente y servidor
- 📱 **Diseño Responsive**: Funciona en dispositivos móviles y escritorio
- 🔍 **Búsqueda en Tiempo Real**: Filtrado rápido de registros

## 📋 Requisitos Previos

- Python 3.8 o superior
- SQL Server con soporte para ODBC
- ODBC Driver 17 for SQL Server (o superior)

## 🛠️ Instalación

### 1. Clonar o descargar el proyecto

```bash
git clone <url-del-repositorio>
cd <nombre-del-proyecto>
```

### 2. Crear entorno virtual

#### Windows (CMD/PowerShell)
```bash
python -m venv venv
```

#### macOS/Linux
```bash
python3 -m venv venv
```

### 3. Activar el entorno virtual

#### Windows (CMD)
```bash
venv\Scripts\activate.bat
```

#### Windows (PowerShell)
```bash
venv\Scripts\Activate.ps1
```

#### macOS/Linux
```bash
source venv/bin/activate
```

### 4. Instalar dependencias

#### Todas las plataformas
```bash
pip install -r requirements.txt
```

### 5. Configurar la base de datos

Cree y configure el archivo `Conecction.json` con sus credenciales:

```json
{
    "server": "nombre-servidor,puerto",
    "database": "nombre-base-datos",
    "username": "usuario",
    "password": "contraseña",
    "driver": "ODBC Driver 17 for SQL Server"
}
```

**Ejemplo:**
```json
{
    "server": "localhost,1433",
    "database": "Catequesis",
    "username": "usuario_db",
    "password": "contraseña_segura",
    "driver": "ODBC Driver 17 for SQL Server"
}
```

### 6. Configurar la base de datos SQL Server

Ejecute los siguientes scripts SQL en orden:

1. `CreateDatabase.sql` - Crea la base de datos
2. `UserCreation.sql` - Crea el usuario de base de datos
3. `GrantPermissions.sql` - Otorga los permisos necesarios
4. `StoredProcedures.sql` - Crea los procedimientos almacenados
5. `InsertTestData.sql` - (Opcional) Inserta datos de prueba

## ▶️ Ejecución

### Modo de desarrollo

#### Windows
```bash
python app.py
```

#### macOS/Linux
```bash
python3 app.py
```

La aplicación estará disponible en: `http://localhost:5001`

### Modo de producción

Para desplegar en producción, use un servidor WSGI:

#### Con Gunicorn (Linux/macOS)
```bash
pip install gunicorn
gunicorn -w 4 -b 0.0.0.0:5001 app:app
```

#### Con Waitress (Windows/Linux/macOS)
```bash
pip install waitress
waitress-serve --host=0.0.0.0 --port=5001 app:app
```

## 📂 Estructura del Proyecto

```
proyecto/
├── app.py                      # Aplicación Flask principal
├── database.py                 # Configuración de base de datos
├── CRUD.py                     # Script de línea de comandos (legacy)
├── Conecction.json            # Configuración de conexión (crear manualmente)
├── requirements.txt           # Dependencias Python
├── README.md                  # Documentación principal
│
├── templates/                 # Plantillas HTML
│   ├── base.html             # Plantilla base
│   ├── index.html            # Página principal
│   ├── reportes.html         # Página de reportes
│   ├── error.html            # Página de error
│   ├── catequizandos/        # Templates de catequizandos
│   │   ├── listar.html
│   │   ├── nuevo.html
│   │   └── editar.html
│   ├── catequistas/          # Templates de catequistas
│   │   └── listar.html
│   └── parroquias/           # Templates de parroquias
│       └── listar.html
│
├── static/                    # Archivos estáticos
│   ├── css/
│   │   └── style.css         # Estilos CSS
│   └── js/
│       └── script.js         # JavaScript
│
├── venv/                      # Entorno virtual (no incluir en git)
│
└── SQL Scripts/               # Scripts de base de datos
    ├── CreateDatabase.sql
    ├── UserCreation.sql
    ├── GrantPermissions.sql
    ├── StoredProcedures.sql
    └── InsertTestData.sql
```

## 🎯 Funcionalidades

### Catequizandos
- **Listar**: Ver todos los catequizandos con búsqueda en tiempo real
- **Registrar**: Formulario completo con validación
- **Editar**: Actualizar información de contacto
- **Eliminar**: Eliminación con confirmación

### Catequistas
- **Listar**: Consultar todos los catequistas registrados
- **Búsqueda**: Filtrado por nombre, rol o parroquia

### Parroquias
- **Listar**: Ver todas las parroquias
- **Búsqueda**: Filtrado por nombre, dirección o vicaría

### Reportes
- Estadísticas generales del sistema
- Estado de pagos de inscripciones
- Visualización con gráficos

## 🔧 Tecnologías Utilizadas

### Backend
- **Flask 3.1.2**: Framework web
- **pyodbc 5.3.0**: Conexión a SQL Server
- **Python 3.x**: Lenguaje de programación

### Frontend
- **HTML5**: Estructura
- **CSS3**: Estilos (diseño personalizado)
- **JavaScript**: Interactividad
- **Font Awesome 6.4.0**: Iconos

### Base de Datos
- **SQL Server**: Sistema de gestión de base de datos
- **Stored Procedures**: Lógica de negocio

## 🎨 Características del Diseño

- **Diseño Responsive**: Se adapta a móviles, tablets y desktop
- **Paleta de Colores Moderna**: Basada en tonos azules y grises
- **Animaciones Suaves**: Transiciones y efectos visuales
- **Iconos Intuitivos**: Font Awesome para mejor UX
- **Validación en Tiempo Real**: Feedback inmediato al usuario

## 📝 Notas Importantes

1. **Seguridad**: 
   - Cambiar `app.secret_key` en producción
   - Usar variables de entorno para credenciales
   - Implementar autenticación de usuarios

2. **Base de Datos**:
   - Verificar que SQL Server esté ejecutándose
   - Confirmar que los stored procedures existan
   - Revisar permisos del usuario

3. **Desarrollo**:
   - Debug mode está activado por defecto
   - Desactivar en producción

## 🐛 Solución de Problemas

### Error de conexión a la base de datos

**Verificar que SQL Server esté ejecutándose:**

#### Windows
```bash
# Verificar servicio de SQL Server
services.msc
# Buscar "SQL Server" y verificar que esté en ejecución
```

#### macOS/Linux (con Docker)
```bash
# Verificar contenedor de SQL Server
docker ps | grep sqlserver

# Iniciar SQL Server si no está corriendo
docker start <nombre-contenedor>
```

**Verificar driver ODBC instalado:**

#### Windows
- Panel de Control → Herramientas Administrativas → Orígenes de datos ODBC
- Verificar que "ODBC Driver 17 for SQL Server" esté instalado

#### macOS
```bash
# Instalar unixODBC
brew install unixodbc

# Verificar drivers instalados
odbcinst -q -d
```

#### Linux
```bash
# Instalar dependencias ODBC
sudo apt-get update
sudo apt-get install unixodbc unixodbc-dev

# Verificar drivers instalados
odbcinst -q -d
```

### Error al importar pyodbc

#### Windows
- Descargar e instalar [Microsoft ODBC Driver for SQL Server](https://docs.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server)
- Reinstalar pyodbc: `pip install --upgrade pyodbc`

#### macOS
```bash
brew install unixodbc
pip install --upgrade pyodbc
```

#### Linux
```bash
sudo apt-get install unixodbc unixodbc-dev
pip install --upgrade pyodbc
```

### Error: "Address already in use" (Puerto ocupado)

#### Windows
```bash
# Encontrar proceso usando el puerto
netstat -ano | findstr :5001

# Terminar proceso (reemplazar PID con el número encontrado)
taskkill /PID <PID> /F
```

#### macOS/Linux
```bash
# Encontrar y terminar proceso
lsof -ti:5001 | xargs kill -9
```

### Problemas con permisos en Windows

Si PowerShell no permite ejecutar scripts:

```powershell
# Ejecutar PowerShell como Administrador
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## 👥 Créditos

Sistema desarrollado como proyecto de gestión de catequesis.

## 📄 Licencia

Este proyecto fue desarrollado con fines educativos.

## 🔐 Configuración de Seguridad

### Antes de desplegar en producción:

1. **Cambiar la clave secreta**
   - Editar `app.py` y cambiar `app.secret_key` por un valor aleatorio seguro
   - Ejemplo: Usar `python -c "import secrets; print(secrets.token_hex(32))"`

2. **Usar variables de entorno**
   - Crear archivo `.env` para credenciales sensibles
   - No incluir `Conecction.json` ni `.env` en el control de versiones

3. **Desactivar modo debug**
   - En `app.py`, cambiar `debug=True` a `debug=False`

4. **Configurar HTTPS**
   - Usar certificados SSL/TLS en producción
   - Considerar usar servicios como Let's Encrypt

## 🔜 Mejoras Futuras

- [ ] Sistema de autenticación de usuarios
- [ ] CRUD completo para catequistas y parroquias
- [ ] Gestión de grupos y niveles
- [ ] Emisión de certificados en PDF
- [ ] Dashboard con gráficos interactivos
- [ ] Exportación de reportes (PDF, Excel)
- [ ] Sistema de notificaciones por correo
- [ ] API REST completa
- [ ] Backup automático de base de datos
- [ ] Roles y permisos de usuario

## 📞 Soporte

Para reportar problemas o sugerencias:
1. Revisar la documentación incluida
2. Verificar la sección de solución de problemas
3. Crear un issue en el repositorio

## 📄 Licencia

Este proyecto fue desarrollado con fines educativos.

---

**Versión**: 1.0.0  
**Última Actualización**: Noviembre 2024  
**Estado**: ✅ Funcional
