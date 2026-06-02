const express = require('express');
const session = require('express-session');
const path = require('path');
require('dotenv').config();

const { conectarDB, sequelize } = require('./config/db');

const Usuario = require('./models/Usuario');
const Publicacion = require('./models/Publicacion');
const Comentario = require('./models/Comentario');
const Imagen = require('./models/Imagen');
const Etiqueta = require('./models/Etiqueta');
const PublicacionEtiqueta = require('./models/PublicacionEtiqueta');
const Valoracion = require('./models/Valoracion');
const Seguidor = require('./models/Seguidor');
const Notificacion = require('./models/Notificacion');
const Coleccion = require('./models/Coleccion');

const app = express();
const PORT = process.env.PORT || 3000;

app.set('view engine', 'pug');
app.set('views', path.join(__dirname, 'views'));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public'))); 

app.use(session({
  secret: process.env.SESSION_SECRET || 'secreto_temporal',
  resave: false,
  saveUninitialized: false,
  cookie: { maxAge: 24 * 60 * 60 * 1000 } 
}));

app.get('/', (req, res) => {
  res.send('<h1>¡Servidor levantado con éxito!</h1>');
});

const iniciarBaseDeDatos = async () => {
  try {
    await conectarDB();
    await sequelize.sync({ alter: true });
    console.log('Tablas sincronizadas y creadas correctamente en PostgreSQL.');
  } catch (error) {
    console.error('Error al sincronizar las tablas:', error);
  }
};

iniciarBaseDeDatos();

app.listen(3000, () => {
  console.log('Servidor corriendo en http://localhost:3000');
});