const Comentario = require('../models/Comentario');
const Usuario = require('../models/Usuario');
const Publicacion = require('../models/Publicacion');
const Notificacion = require('../models/Notificacion'); 

const crearComentario = async (req, res) => {
  console.log("Datos recibidos:", req.body);
  console.log("Sesión de usuario:", req.session.usuarioId);
  
  if (!req.session.usuarioId) {
    return res.status(401).json({ mensaje: 'Debes iniciar sesión para comentar.' });
  }
  
  try {
    const { contenido, publicacionId } = req.body;

    if (!contenido || !publicacionId) {
      return res.status(400).json({ mensaje: 'El contenido y el ID de la publicación son obligatorios.' });
    }

    const usuarioIdTemp = req.session.usuarioId;

    const nuevoComentario = await Comentario.create({
      contenido,
      publicacionId,
      usuarioId: usuarioIdTemp
    });

    const publicacion = await Publicacion.findByPk(publicacionId);

    const autorComentario = await Usuario.findByPk(usuarioIdTemp);

    if (publicacion && autorComentario) {
      if (Number(publicacion.usuarioId) !== Number(usuarioIdTemp)) {
        await Notificacion.create({
          usuarioId: publicacion.usuarioId,
          tipo: 'comentario',
          mensaje: `@${autorComentario.usuario} comentó en tu publicación: "${contenido.substring(0, 20)}..."`
        });
        console.log("Notificación de comentario creada exitosamente.");
      }
    }

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