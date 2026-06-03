const express = require('express');
const router = express.Router();
const { crearColeccion, obtenerMisColecciones } = require('../controllers/coleccionController');

router.get('/', obtenerMisColecciones);
router.post('/', crearColeccion);
module.exports = router;