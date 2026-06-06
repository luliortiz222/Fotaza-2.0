const express = require('express');
const router = express.Router();
const { crearComentario } = require('../controllers/comentarioController');

router.post('/crear', crearComentario);
module.exports = router;