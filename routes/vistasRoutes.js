const express = require('express');
const router = express.Router();
const publicacionController = require('../controllers/publicacionController');
const coleccionController = require('../controllers/coleccionController');
const notificacionController = require('../controllers/notificacionController');

const verificarSesion = (req, res, next) => {
  console.log("=== VERIFICAR SESION ===");
  console.log(req.session);

  if (!req.session.usuarioId) {
    return res.redirect('/login');
  }

  next();
};

router.get('/registro', (req, res) => { res.render('registro'); });
router.get('/login', (req, res) => { res.render('login'); });

router.get('/', publicacionController.obtenerFeedGlobal);

router.get('/mi-perfil', verificarSesion, publicacionController.obtenerPerfilPersonal);

router.get('/mis-colecciones', verificarSesion, coleccionController.mostrarColecciones);

router.get('/notificaciones', verificarSesion, notificacionController.obtenerMisNotificaciones);

module.exports = router;