const Seguidor = require('../models/Seguidor');
const Usuario = require('../models/Usuario');
const Notificacion = require('../models/Notificacion');

const alternarSeguimiento = async (req, res) => {
  try {
    const { usuarioId } = req.body;
    const seguidorIdTemp = req.session.usuarioId;

    if (usuarioId == seguidorIdTemp) {
      return res.status(400).json({
        mensaje: 'No puedes seguirte a ti mismo.'
      });
    }

    const yaLoSigue = await Seguidor.findOne({
      where: {
        seguidorId: seguidorIdTemp,
        usuarioId: usuarioId
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
      usuarioId: usuarioId
    });

    console.log("Seguimiento creado");

    const seguidor = await Usuario.findByPk(seguidorIdTemp);

    console.log("Usuario encontrado:", seguidor.usuario);

    await Notificacion.create({
      usuarioId: usuarioId,
      tipo: 'seguimiento',
      mensaje: `${seguidor.usuario} comenzó a seguirte.`
    });

    console.log("Notificación creada");

    return res.json({
      mensaje: '¡Comenzaste a seguir a este usuario!'
    });

  } catch (error) {
    console.error("ERROR EN SEGUIMIENTO:", error);

    return res.status(500).json({
      mensaje: 'Error al seguir usuario.'
    });
  }
};

module.exports = {
  alternarSeguimiento
};