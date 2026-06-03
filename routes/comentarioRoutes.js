const express = require('express');
const router = express.Router();
const { crearComentario } = require('../controllers/comentarioController');

router.post('/', crearComentario);
module.exports = router;