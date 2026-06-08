const Notificacion = require('../models/Notificacion');

const obtenerMisNotificaciones = async (req, res) => {
  try {
    const usuarioId = req.session.usuarioId;

    if (!usuarioId) {
      return res.redirect('/login');
    }

    const notificaciones = await Notificacion.findAll({
      where: { usuarioId: usuarioId },
      order: [['createdAt', 'DESC']],
      raw: true 
    });

    Notificacion.update(
      { leido: true },
      { where: { usuarioId: usuarioId, leido: false } }
    ).then(([filas]) => {
      if (filas > 0) {
        console.log(`\n=== [DB BACKGROUND UPDATE] === ${filas} notificaciones pasadas a leídas para el próximo clic.`);
      }
    }).catch(err => console.error("Error en update de fondo:", err));

    res.render('notificaciones', {
      notificaciones
    });

  } catch (error) {
    console.error("ERROR GRAVE EN NOTIFICACIONES:", error);
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