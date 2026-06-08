const Valoracion = require('../models/Valoracion');
const Publicacion = require('../models/Publicacion');
const Usuario = require('../models/Usuario');
const Notificacion = require('../models/Notificacion');

const darLike = async (req, res) => {
  if (!req.session.usuarioId) {
    return res.status(401).json({ 
      mensaje: 'Debes iniciar sesión para valorar.' 
    });
  }

  try {
    const { publicacionId, puntuacion } = req.body; 
    const usuarioId = req.session.usuarioId; 

    let valoracion = await Valoracion.findOne({
      where: { usuarioId, publicacionId }
    });

    const publicacion = await Publicacion.findByPk(publicacionId);
    const usuarioCalificador = await Usuario.findByPk(usuarioId);

    if (valoracion) {
      await valoracion.update({ puntuacion });

      if (publicacion && usuarioCalificador && Number(publicacion.usuarioId) !== Number(usuarioId)) {
        await Notificacion.create({
          usuarioId: publicacion.usuarioId,
          tipo: 'valoracion',
          mensaje: `@${usuarioCalificador.usuario} actualizó su valoración a ${puntuacion} estrellas en tu publicación.`
        });
      }

      return res.status(200).json({ mensaje: 'Valoración actualizada' });
    } else {
      await Valoracion.create({
        usuarioId,
        publicacionId,
        puntuacion 
      });

      if (publicacion && usuarioCalificador && Number(publicacion.usuarioId) !== Number(usuarioId)) {
        await Notificacion.create({
          usuarioId: publicacion.usuarioId,
          tipo: 'valoracion',
          mensaje: `@${usuarioCalificador.usuario} le dio ${puntuacion} estrellas a tu publicación.`
        });
      }

      return res.status(201).json({ mensaje: '¡Publicación valorada!' });
    }
  } catch (error) {
    console.error('Error en darLike:', error);
    res.status(500).json({ mensaje: 'Hubo un error al valorar.' });
  }
};

module.exports = { darLike };