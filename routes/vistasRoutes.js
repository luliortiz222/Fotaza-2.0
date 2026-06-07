const express = require('express');
const router = express.Router();
const publicacionController = require('../controllers/publicacionController');
const Coleccion = require('../models/Coleccion');

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

router.get('/mis-colecciones', verificarSesion, async (req, res) => {
  try {
    const colecciones = await Coleccion.findAll({
      where: { usuarioId: req.session.usuarioId }
    });

    console.log("colecciones encontradas:", colecciones.map(c => c.dataValues));

    res.render('misColecciones', { colecciones });
  } catch (error) {
    console.error(error);
    res.render('misColecciones', { colecciones: [] });
  }
});

module.exports = router;