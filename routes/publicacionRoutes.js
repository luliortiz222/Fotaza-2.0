const express = require('express');
const router = express.Router();
const publicacionController = require('../controllers/publicacionController');
const upload = require('../config/multer');

router.get('/crear', publicacionController.mostrarFormulario);
router.get('/', publicacionController.obtenerPublicaciones);
router.post('/', upload.single('imagen'), publicacionController.crearPublicacion);
router.post('/eliminar/:id', publicacionController.eliminarPublicacion);

module.exports = router;