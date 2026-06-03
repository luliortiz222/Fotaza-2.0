const express = require('express');
const router = express.Router();
const { crearEtiqueta } = require('../controllers/etiquetaController');

router.post('/', crearEtiqueta);
module.exports = router;