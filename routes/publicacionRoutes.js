const express = require('express');
const router = express.Router();
const publicacionController = require('../controllers/publicacionController');
const upload = require('../config/multer'); 
const { estaLogueado } = require('../middleware/auth'); 

router.get('/crear', estaLogueado, publicacionController.mostrarFormulario);
router.get('/', publicacionController.obtenerFeedGlobal);
router.get('/mi-perfil', estaLogueado, publicacionController.obtenerPerfilPersonal);

router.post('/crear', estaLogueado, (req, res, next) => {

  upload.single('imagen')(req, res, function(err) {

    if (err) {
      console.error('========== ERROR MULTER ==========');
      console.error(err);
      console.error('MENSAJE:', err.message);
      return res.status(500).send(err.message);
    }

    next();
  });

}, publicacionController.crearPublicacion);

router.post('/eliminar/:id', estaLogueado, publicacionController.eliminarPublicacion);

module.exports = router;