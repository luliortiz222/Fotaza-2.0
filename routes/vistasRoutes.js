const express = require('express');
const router = express.Router();
const publicacionController = require('../controllers/publicacionController');

const verificarSesion = (req, res, next) => {
  if (!req.session.usuarioId) {
    return res.redirect('/login');
  }
  next();
};

router.get('/registro', (req, res) => { res.render('registro'); });
router.get('/login', (req, res) => { res.render('login'); });

router.get('/', verificarSesion, publicacionController.obtenerPublicaciones);

module.exports = router;