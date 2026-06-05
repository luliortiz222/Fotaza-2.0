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

const usuarioRoutes = require('./routes/usuarioRoutes');
const publicacionRoutes = require('./routes/publicacionRoutes');
const comentarioRoutes = require('./routes/comentarioRoutes');
const valoracionRoutes = require('./routes/valoracionRoutes');
const seguidorRoutes = require('./routes/seguidorRoutes');
const coleccionRoutes = require('./routes/coleccionRoutes');
const etiquetaRoutes = require('./routes/etiquetaRoutes');
const notificacionRoutes = require('./routes/notificacionRoutes');
const vistasRoutes = require('./routes/vistasRoutes');
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

//app.get('/', (req, res) => {
 // if (!req.session.usuarioId) {
 //   return res.redirect('/login');
  //}
  //res.render('index', { 
  //  nombreUsuario: req.session.nombreUsuario 
 // });
//});

app.use('/api/usuarios', usuarioRoutes);
app.use('/api/publicaciones', publicacionRoutes);
app.use('/api/comentarios', comentarioRoutes);
app.use('/api/valoraciones', valoracionRoutes);
app.use('/api/seguidores', seguidorRoutes);
app.use('/api/colecciones', coleccionRoutes);
app.use('/api/notificaciones', notificacionRoutes);
app.use('/api/etiquetas', etiquetaRoutes);
app.use('/', vistasRoutes);
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

app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});