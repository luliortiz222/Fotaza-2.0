const express = require('express');
const router = express.Router();
const { darLike } = require('../controllers/valoracionController');

router.post('/', darLike);
module.exports = router;