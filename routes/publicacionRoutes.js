const express = require('express');
const router = express.Router();
const publicacionController = require('../controllers/publicacionController');
const upload = require('../config/multer'); 
const { estaLogueado } = require('../middleware/auth'); 

router.get('/crear', publicacionController.mostrarFormulario);
router.get('/', publicacionController.obtenerPublicaciones);

router.post('/', estaLogueado, upload.single('imagen'), publicacionController.crearPublicacion);
router.post('/eliminar/:id', estaLogueado, publicacionController.eliminarPublicacion);

module.exports = router;