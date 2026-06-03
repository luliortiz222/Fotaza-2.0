const Notificacion = require('../models/Notificacion');

const obtenerMisNotificaciones = async (req, res) => {
  try {
    const usuarioIdTemp = req.session.usuarioId || 1;

    const notificaciones = await Notificacion.findAll({
      where: { usuarioId: usuarioIdTemp },
      order: [['createdAt', 'DESC']] 
    });

    res.status(200).json(notificaciones);
  } catch (error) {
    console.error('Error en obtenerMisNotificaciones:', error);
    res.status(500).json({ mensaje: 'Hubo un error al obtener las notificaciones.' });
  }
};

const marcarComoLeida = async (req, res) => {
  try {
    const { id } = req.params;

    const notificacion = await Notificacion.findByPk(id);

    if (!notificacion) {
      return res.status(404).json({ mensaje: 'Notificación no encontrada.' });
    }

    notificacion.leida = true; 
    await notificacion.save();

    res.status(200).json({ mensaje: 'Notificación marcada como leída.' });
  } catch (error) {
    console.error('Error en marcarComoLeida:', error);
    res.status(500).json({ mensaje: 'Hubo un error al actualizar la notificación.' });
  }
};

module.exports = {
  obtenerMisNotificaciones,
  marcarComoLeida
};