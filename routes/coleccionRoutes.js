const express = require('express');
const router = express.Router();
const { 
    crearColeccion, 
    obtenerMisColecciones, 
    mostrarColecciones} = require('../controllers/coleccionController');

router.get('/', obtenerMisColecciones);
router.post('/', crearColeccion);
module.exports = router;