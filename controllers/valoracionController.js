const Valoracion = require('../models/Valoracion');

const darLike = async (req, res) => {
  try {
    const { publicacionId, puntuacion } = req.body; 
    const usuarioId = req.session.usuarioId || 1;
    let valoracion = await Valoracion.findOne({
      where: { usuarioId, publicacionId }
    });

    if (valoracion) {
      await valoracion.update({ puntuacion });
      return res.status(200).json({ mensaje: 'Valoración actualizada' });
    } else {
      await Valoracion.create({
        usuarioId,
        publicacionId,
        puntuacion 
      });
      return res.status(201).json({ mensaje: '¡Publicación valorada!' });
    }
  } catch (error) {
    console.error('Error en darLike:', error);
    res.status(500).json({ mensaje: 'Hubo un error al valorar.' });
  }
};

module.exports = {
  darLike
};