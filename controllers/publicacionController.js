const Publicacion = require('../models/Publicacion');
const Usuario = require('../models/Usuario');

const mostrarFormulario = (req, res) => {
  //if (!req.session.usuarioId) {
 //   return res.redirect('/login');
 // }
  res.render('crearPublicacion');
};

const crearPublicacion = async (req, res) => {
  try {
    if (!req.file) {
      return res.status(400).render('crearPublicacion', { error: 'Por favor, selecciona una imagen válida.' });
    }

    const { titulo, descripcion } = req.body;

    if (!titulo) {
      return res.status(400).render('crearPublicacion', { error: 'El título es obligatorio.' });
    }
    const usuarioIdReal = req.session.usuarioId || 1;;
    if (!usuarioIdReal) {
      return res.status(401).render('login', { error: 'Debes iniciar sesión para publicar.' });
    }
    const urlImagenRuta = `/uploads/${req.file.filename}`;

    await Publicacion.create({
      titulo,
      descripcion,
      urlImagen: urlImagenRuta,
      usuarioId: usuarioIdReal
    });

    console.log(`¡Nueva foto publicada con éxito por el usuario ID: ${usuarioIdReal}!`);
    return res.redirect('/'); 

  } catch (error) {
    console.error('Error en crearPublicacion:', error);
    return res.status(500).render('crearPublicacion', { error: 'Hubo un error al crear la publicación.' });
  }
};

const obtenerPublicaciones = async (req, res) => {
  try {
    const publicaciones = await Publicacion.findAll({
      where: { usuarioId: req.session.usuarioId },
      include: [{ model: Usuario, attributes: ['id','nombre', 'usuario'] }],
      order: [['createdAt', 'DESC']]
    });

    res.render('index', { 
      publicaciones,
      nombreUsuario: req.session.nombreUsuario,
      usuarioId: req.session.usuarioId
    });
  } catch (error) {
    console.error('Error en obtenerPublicaciones:', error);
    res.status(500).send('Hubo un error al cargar el feed.');
  }
};

const eliminarPublicacion = async (req, res) => {
  try {
    const { id } = req.params;
    const publicacion = await Publicacion.findByPk(id);

    if (!publicacion) {
      return res.status(404).send('Publicación no encontrada.');
    }
    if (publicacion.usuarioId !== req.session.usuarioId) {
      return res.status(403).send('No tienes permiso para eliminar esto.');
    }
    await publicacion.destroy();
    res.redirect('/');
  } catch (error) {
    console.error('Error al eliminar:', error);
    res.status(500).send('Error al eliminar la publicación.');
  }
};

module.exports = {
  mostrarFormulario,
  crearPublicacion,
  obtenerPublicaciones,
  eliminarPublicacion
};