const express = require('express');
const router = express.Router();
const { obtenerMisNotificaciones, marcarComoLeida } = require('../controllers/notificacionController');

router.get('/', obtenerMisNotificaciones);
router.put('/:id/leida', marcarComoLeida);
module.exports = router;