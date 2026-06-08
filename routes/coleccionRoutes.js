const express = require('express');
const router = express.Router();
const { 
    crearColeccion, 
    obtenerMisColecciones, 
    mostrarColecciones,
    agregarPublicacion
} = require('../controllers/coleccionController');

router.get('/mis-colecciones', mostrarColecciones);
router.post('/', crearColeccion);
router.post('/agregar-publicacion', agregarPublicacion);

module.exports = router;