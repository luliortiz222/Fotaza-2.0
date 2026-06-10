# Fotaza 2.0
Trabajo Integrador Práctico - Programación Web II

Aplicación web desarrollada para compartir fotografías, interactuar con otros usuarios y gestionar contenido mediante publicaciones, comentarios, valoraciones, seguimiento de usuarios y notificaciones.

## Descripción

Fotaza 2.0 es una plataforma web donde los usuarios pueden registrarse, publicar fotografías, comentar publicaciones, valorarlas, seguir a otros usuarios y recibir notificaciones sobre las interacciones realizadas dentro de la aplicación.

La aplicación fue desarrollada utilizando Node.js, Express, Sequelize, PostgreSQL y Pug, cumpliendo con los requisitos establecidos para el Trabajo Práctico Integrador de Programación Web II.

---

## Tecnologías Utilizadas

### Backend

- Node.js
- Express
- Sequelize
- PostgreSQL

### Frontend

- Pug
- CSS

### Librerías utilizadas

- bcryptjs
- express-session
- multer
- cloudinary
- multer-storage-cloudinary
- dotenv

---

## Funcionalidades Implementadas

### Sistema de autenticación

- Registro de usuarios.
- Inicio de sesión.
- Cierre de sesión.

### Gestión de publicaciones

- Creación de publicaciones.
- Carga de imágenes.
- Título y descripción.
- Eliminación de publicaciones propias.

### Comentarios

- Agregar comentarios a publicaciones.
- Visualización de comentarios.

### Valoraciones

- Valoración de publicaciones.

### Buscador

- Búsqueda de publicaciones.

### Seguimiento de usuarios

- Seguir usuarios.
- Dejar de seguir usuarios.
- Visualización de seguidores. 

### Notificaciones

- Notificaciones por comentarios.
- Notificaciones por valoraciones.
- Notificaciones por nuevos seguidores.
- Marcado de notificaciones como nuevas.
- Marcado de notificaciones como leídas.

### Gestión de imágenes

- Almacenamiento de imágenes mediante Cloudinary.
- Persistencia de imágenes en producción.

---

## Aplicación en Producción

URL de la aplicación:

```text
https://fotaza-2-0.onrender.com
```

---

## Repositorio

Repositorio GitHub:

```text
https://github.com/luliortiz222/Fotaza-2.0.git
```

---

## Video Demostrativo

Video de demostración del sistema (en Youtube):

```text
https://youtu.be/fF5REP7gqYM
```

---

## Instalación Local

### 1. Clonar el repositorio

```bash
git clone https://github.com/luliortiz222/Fotaza-2.0.git
```

### 2. Ingresar al proyecto

```bash
cd Fotaza2.0
```

### 3. Instalar dependencias

```bash
npm install
```

### 4. Configurar variables de entorno

Crear un archivo `.env` tomando como referencia `.env.example`.

### 5. Inicializar la base de datos

```bash
npm run db:init
```

### 6. Ejecutar la aplicación

```bash
npm start
```

La aplicación quedará disponible en:

```text
http://localhost:3000
```

---

## Variables de Entorno

Archivo `.env.example`:

```env
PORT=

DB_USER=
DB_HOST=
DB_NAME=
DB_PASSWORD=
DB_PORT=

SESSION_SECRET=

CLOUDINARY_CLOUD_NAME=
CLOUDINARY_API_KEY=
CLOUDINARY_API_SECRET=
```

---

## Usuarios de Prueba

| Nombre | Usuario | Email | Contraseña |
|----------|----------|----------|----------|
| Evaristo Titus | Evaristo_Eleva | Evaristo_Tito@Gmail.com | EVARISTO45 |
| Matias Del Arco | Matu_D'Arco | Mati32D'Arco@Gmail.com | Mati1000 |
| Sofia Sanchez | Sofi_Snach12 | Sofia15Snachez@Gmail.com | SOFISNACH22 |
| Catalina Di Santi | Cati_Di'Santi | Catalina9DSanti@Gmail.com | Catu22S |
| Melinoe Aeson | Meli_Aeson | Melino99Aeson@Gmail.com | MelitaAeson |
| Nicolas Bustamante | Nico_Busta23 | Nico_Busta23@gmail.com | NickyBustaman |

Estos usuarios poseen publicaciones, comentarios, valoraciones, seguidores y notificaciones para facilitar las pruebas del sistema.

---

## Endpoints Principales

### Autenticación

```http
GET /login
POST /login
GET /registro
POST /registro
GET /logout
```

### Publicaciones

```http
GET /publicaciones
GET /publicaciones/:id
POST /publicaciones
```

### Comentarios

```http
POST /comentarios
```

### Valoraciones

```http
POST /valoraciones
```

### Seguimiento

```http
POST /seguir/:id
POST /dejar-seguir/:id
```

### Notificaciones

```http
GET /notificaciones
```

---

## Backup de Base de Datos

Se incluye un respaldo de la base de datos PostgreSQL utilizada durante el desarrollo del proyecto.

Ubicación:

Carpeta: backup

fotaza_db_backup_render.sql

El backup contiene:

- Usuarios de prueba.
- Publicaciones.
- Comentarios.
- Valoraciones.
- Seguidores.
- Notificaciones.

Correspondiente al último estado de la base de datos PostgreSQL utilizada por el proyecto.

---

## Problemas Encontrados Durante el Desarrollo

### Persistencia de imágenes

Inicialmente las imágenes se almacenaban localmente. Para evitar la pérdida de archivos en producción se implementó Cloudinary.

### Despliegue en producción

Se adaptó la conexión a PostgreSQL para funcionar tanto en entorno local como en Render utilizando variables de entorno y DATABASE_URL.

### Gestión de datos

Se utilizó Sequelize para simplificar la administración de modelos y relaciones entre entidades.

---

## Autor

Lourdes Ortiz

Trabajo Práctico Integrador

Programación Web II