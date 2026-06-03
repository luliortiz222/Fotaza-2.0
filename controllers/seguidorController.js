const Seguidor = require('../models/Seguidor');
const Usuario = require('../models/Usuario');

const alternarSeguimiento = async (req, res) => {
  try {
    const { seguidoId } = req.body;
    const seguidorIdTemp = req.session.usuarioId || 1;

    if (seguidoId === seguidorIdTemp) {
      return res.status(400).json({ mensaje:'No puedes seguirte a ti mismo.' });
    }

    const yaLoSigue = await Seguidor.findOne({
      where: { seguidorId: seguidorIdTemp, seguidoId }
    });

    if (yaLoSigue) {
      await yaLoSigue.destroy();
      return res.status(200).json({ mensaje:'Dejaste de seguir a este usuario.' });
    }

    await Seguidor.create({
      seguidorId: seguidorIdTemp,
      seguidoId
    });

    res.status(201).json({ mensaje:'¡Comenzaste a seguir a este usuario!' });

  } catch (error) {
    console.error('Error en alternarSeguimiento:', error);
    res.status(500).json({ mensaje: 'Hubo un error al procesar el seguimiento.' });
  }
};

module.exports = {
  alternarSeguimiento
};