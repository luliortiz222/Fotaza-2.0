const Publicacion = require('../models/Publicacion');
const Usuario = require('../models/Usuario');

const crearPublicacion = async (req, res) => {
  try {
    const { titulo, descripcion, urlImagen } = req.body;

    if (!titulo || !urlImagen) {
      return res.status(400).json({ mensaje: 'El título y la imagen son obligatorios.' });
    }

    const usuarioIdTemp = req.session.usuarioId || 1; 

    const nuevaPublicacion = await Publicacion.create({
      titulo,
      descripcion,
      urlImagen,
      usuarioId: usuarioIdTemp
    });

    res.status(201).json({
      mensaje: '¡Publicación creada con éxito!',
      publicacion: nuevaPublicacion
    });

  } catch (error) {
    console.error('Error en crearPublicacion:', error);
    res.status(500).json({ mensaje: 'Hubo un error al crear la publicación.' });
  }
};

const obtenerPublicaciones = async (req, res) => {
  try {
    const publicaciones = await Publicacion.findAll({
      include: [{ model: Usuario, attributes: ['nombre', 'email'] }],
      order: [['createdAt', 'DESC']]
    });

    res.status(200).json(publicaciones);
  } catch (error) {
    console.error('Error en obtenerPublicaciones:', error);
    res.status(500).json({ mensaje: 'Hubo un error al obtener las publicaciones.' });
  }
};

module.exports = {
  crearPublicacion,
  obtenerPublicaciones
};