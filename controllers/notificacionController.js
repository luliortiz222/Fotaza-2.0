const Notificacion = require('../models/Notificacion');

const obtenerMisNotificaciones = async (req, res) => {
  try {
    const usuarioId = req.session.usuarioId;

    const notificaciones = await Notificacion.findAll({
      where: {
        usuarioId
      },
      order: [['createdAt', 'DESC']]
    });

    res.render('notificaciones', {
      notificaciones
    });

  } catch (error) {
    console.error(error);
    res.status(500).send('Error al cargar notificaciones');
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