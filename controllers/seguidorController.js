const Seguidor = require('../models/Seguidor');
const Usuario = require('../models/Usuario');
const Notificacion = require('../models/Notificacion');

const alternarSeguimiento = async (req, res) => {
  try {
    const { seguidoId } = req.body;
    const seguidorIdTemp = req.session.usuarioId;

    if (seguidoId == seguidorIdTemp) {
      return res.status(400).json({
        mensaje: 'No puedes seguirte a ti mismo.'
      });
    }

    const yaLoSigue = await Seguidor.findOne({
      where: {
        seguidorId: seguidorIdTemp,
        seguidoId
      }
    });

    if (yaLoSigue) {
      await yaLoSigue.destroy();
      return res.json({
        mensaje: 'Dejaste de seguir a este usuario.'
      });
    }

    await Seguidor.create({
      seguidorId: seguidorIdTemp,
      seguidoId
    });

    const seguidor = await Usuario.findByPk(seguidorIdTemp);

    await Notificacion.create({
      usuarioId: seguidoId,
      tipo: 'seguimiento',
      mensaje: `${seguidor.usuario} comenzó a seguirte.`
    });

    res.json({
      mensaje: '¡Comenzaste a seguir a este usuario!'
    });

  } catch (error) {
    console.error(error);
    res.status(500).json({
      mensaje: 'Error al seguir usuario.'
    });
  }
};

module.exports = {
  alternarSeguimiento
};