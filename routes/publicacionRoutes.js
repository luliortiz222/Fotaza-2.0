const express = require('express');
const router = express.Router();
const { crearPublicacion, obtenerPublicaciones } = require('../controllers/publicacionController');

router.get('/', obtenerPublicaciones);

router.post('/', crearPublicacion);

module.exports = router;