const Valoracion = require('../models/Valoracion');

const darLike = async (req, res) => {
  try {
    const { publicacionId } = req.body;
    const usuarioIdTemp = req.session.usuarioId || 1;

    const yaTieneLike = await Valoracion.findOne({
      where: { usuarioId: usuarioIdTemp, publicacionId }
    });

    if (yaTieneLike) {
      await yaTieneLike.destroy();
      return res.status(200).json({ mensaje: 'Like eliminado' });
    }

    await Valoracion.create({
      usuarioId: usuarioIdTemp,
      publicacionId
    });

    res.status(201).json({ mensaje: '¡Te gusta esta publicación!' });

  } catch (error) {
    console.error('Error en darLike:', error);
    res.status(500).json({ mensaje: 'Hubo un error con la valoración.' });
  }
};

module.exports = {
  darLike
};