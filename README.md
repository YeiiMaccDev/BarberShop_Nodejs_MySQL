# Barber Shop - Node.js - MySQL

Aplicación web de una barbería en la que el usuario puede reservar cita para los servicios prestados.


## Herramientas
- Nodejs
- Mysql
- Visual Studio Code


### Manual
#### Instalar una aplicación que permita gestionar la base de datos MySQL.
- Instalar Xampp o Preferiblemente **MySql Workbench**: https://dev.mysql.com/downloads/windows/installer/8.0.html

- Durante la instalación se genera una **contraseña a recordar** que luego se debe colocar en el archivo:
(Por defecto es vacia '' o en caso del archivo 'YeiiMaccDev123' reemplazar por la generada en la instalación).

**src/config.js**
```
  host: process.env.DATABASE_HOST || "localhost",
  user: process.env.DATABASE_USER || "root",
  password: process.env.DATABASE_PASSWORD || "YeiiMaccDev123",
```


- Ejecutar el archivo **db.js** en el motor de base de datos.
De esta forma crea la base de datos, tablas y datos por defecto del sistema.
**database/db.js**

#### Instalar Node.js 
- Instalar Node.js para ejecutar nuestro proyecto: https://nodejs.org/es/download/

- Instar dependencias del proyecto.
Abrir el proyecto en su editor de codigo preferido.
(Se recomienda visual studio code: https://code.visualstudio.com/download )


Para instalar dependencias del proyecto ejecutar desde la consola o terminal el comando:
```
npm install
```


Esperar que termine la instalacion de dependencias, se guardaran el la carpeta *node_modules*.
(Si borra esta carpeta por accidente solo vuelva a ejecutar el comando).

#### Ejecutar el proyecto.
Para abrir el proyecto ejecutar desde la consola o terminal el comando:
```
npm run dev
```
Vea la aplicación en el navegador http://localhost:4000

## Usuarios del sistema.
- **ADMIN:** user: admin@gmail.com  password: admin123
- **Cliente** user: cliente@gmail.com password: cliente123


## Estructura de archivos

- database, carpeta con todas las consultas sql, que puede utilizar para volver a crear la base de datos para esta aplicación
- src, es todo el código para la Aplicación Backend y Frontend
- docs, pantallas de la aplicación(Ejemplos.)



## Dependencias

1.	Express: Framework mas popular de node.js para la creación de aplicaciones back end.
-	Express-handlebars: es la integración del motor de plantillas handlebars en express. Otras opciones jade, pug, ejs, jinja.
-	Express-session: Administra las sessions de nuestra app. Sera necesario para autenticar a un usuario.
2.	Mysql: Es un modulo para conectarnos a la base de datos. Este modulo no es la base de datos, solo sirve para establecer la conexión y hacer consultas.
-	Express-mysql-session: este módulo almacena las sesiones de la base de datos, en lugar del servidor, esto es lo ideal cuando la aplicación este en producción.
3.	Morgan: Permite crear logs y mensajes de que es lo que las aplicaciones clientes están pidiendo al servidor.
4.	Bcryptjs: este modulo permite cifrar las claves de los usuarios antes de guaradrlos en la base de datos.
5.	Passport: este modulo permite autenticar y manejar el proceso de login de un usuario en la aplicación.
-	Passport-local: complemento de Passport para autenticar a los usuarios con nuestra propia base de datos.
6.	Timeago.js: convierte los timestamps o fechas de la base de datos en un formato de: 2 minutes ago, 2 hours ago, etc.
7.	Connect-flash: es usado para mostrar mensajes de error y éxito cuando el usuario realice una peracion.
8.	Express-validator:  valida los datos que el usuario nos envía desde la aplicación cliente.
9.	Dayjs:  Formato a fechas, hora y uso de tiempo.






