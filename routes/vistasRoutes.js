const express = require('express');
const router = express.Router();

router.get('/registro', (req, res) => {
  res.render('registro'); // Busca el archivo 'registro.pug' en la carpeta views
});

router.get('/login', (req, res) => {
  res.render('login');
});

module.exports = router;