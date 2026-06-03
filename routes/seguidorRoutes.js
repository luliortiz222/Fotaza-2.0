const express = require('express');
const router = express.Router();
const { alternarSeguimiento } = require('../controllers/seguidorController');

router.post('/', alternarSeguimiento);
module.exports = router;