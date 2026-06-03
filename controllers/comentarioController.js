const Comentario = require('../models/Comentario');
const Usuario = require('../models/Usuario');

const crearComentario = async (req, res) => {
  try {
    const { contenido, publicacionId } = req.body;

    if (!contenido || !publicacionId) {
      return res.status(400).json({ mensaje: 'El contenido y el ID de la publicación son obligatorios.' });
    }

    const usuarioIdTemp = req.session.usuarioId || 1;

    const nuevoComentario = await Comentario.create({
      contenido,
      publicacionId,
      usuarioId: usuarioIdTemp
    });

    res.status(201).json({
      mensaje: '¡Comentario publicado! 💬',
      comentario: nuevoComentario
    });

  } catch (error) {
    console.error('Error en crearComentario:', error);
    res.status(500).json({ mensaje: 'Hubo un error al crear el comentario.' });
  }
};
module.exports = {
  crearComentario
};