const Publicacion = require('../models/Publicacion');
const Usuario = require('../models/Usuario');
const Etiqueta = require('../models/Etiqueta');
const Valoracion = require('../models/Valoracion');
const Comentario = require('../models/Comentario');
const Coleccion = require('../models/Coleccion');
const Seguidor = require('../models/Seguidor');

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

    const { titulo, descripcion, etiquetas } = req.body;

    if (!titulo) {
      return res.status(400).render('crearPublicacion', { error: 'El título es obligatorio.' });
    }
    const usuarioIdReal = req.session.usuarioId || 1;
    if (!usuarioIdReal) {
      return res.status(401).render('login', { error: 'Debes iniciar sesión para publicar.' });
    }
    const urlImagenRuta = `/uploads/${req.file.filename}`;

    const nuevaPublicacion = await Publicacion.create({
      titulo,
      descripcion,
      urlImagen: urlImagenRuta,
      usuarioId: usuarioIdReal
    });

    if (etiquetas) {
      const nombresEtiquetas = etiquetas.split(',').map(e => e.trim()).filter(e => e !== "");
      
      for (const nombre of nombresEtiquetas) {
        const [etiqueta] = await Etiqueta.findOrCreate({ 
          where: { nombre: nombre.toLowerCase() }
        });
        await nuevaPublicacion.addEtiqueta(etiqueta); 
      }
    }

    console.log(`¡Nueva foto publicada con éxito por el usuario ID: ${usuarioIdReal}!`);
    return res.redirect('/'); 

  } catch (error) {
    console.error('Error en crearPublicacion:', error);
    return res.status(500).render('crearPublicacion', { error: 'Hubo un error al crear la publicación.' });
  }
};

const obtenerFeedGlobal = async (req, res) => {
  try {

    const publicaciones = await Publicacion.findAll({
      include: [
        Usuario,
        {
          model: Comentario,
          include: [Usuario]
        }
      ],
      order: [['createdAt', 'DESC']]
    });

    const usuarioId = req.session.usuarioId;

    let colecciones = [];

    if (usuarioId) {
      colecciones = await Coleccion.findAll({
        where: {
          usuarioId: usuarioId
        }
      });
    }

    const publicacionesConValoracion = await Promise.all(
  publicaciones.map(async (pub) => {

    const valoracion = usuarioId
      ? await Valoracion.findOne({
          where: {
            usuarioId,
            publicacionId: pub.id
          }
        })
      : null;

    const pubJSON = pub.toJSON();

    pubJSON.miPuntuacion = valoracion
      ? valoracion.puntuacion
      : 0;

    if (
      usuarioId &&
      pubJSON.Usuario &&
      Number(pubJSON.Usuario.id) !== Number(usuarioId)
    ) {

      const seguimiento = await Seguidor.findOne({
        where: {
          seguidorId: usuarioId,
          usuarioId: pubJSON.Usuario.id
        }
      });

      pubJSON.yaLoSigue = !!seguimiento;

    } else {
      pubJSON.yaLoSigue = false;
    }

    return pubJSON;
  })
);

    res.render('index', {
   publicaciones: publicacionesConValoracion,
   colecciones,
   usuarioId: req.session.usuarioId,
   nombreUsuario: req.session.nombreUsuario,
   titulo: 'Feed Global'
});
  } catch (error) {
    console.error('Error en Feed Global:', error);
    res.status(500).send('Error al cargar el feed');
  }
};

const obtenerPerfilPersonal = async (req, res) => {
  try {
    const publicaciones = await Publicacion.findAll({
      where: { usuarioId: req.session.usuarioId },
      include: [Usuario, { model: Comentario, include: [Usuario] }],
      order: [['createdAt', 'DESC']]
    });

    const usuarioId = req.session.usuarioId;

    const publicacionesConValoracion = await Promise.all(publicaciones.map(async (pub) => {
      const valoracion = await Valoracion.findOne({
        where: { usuarioId, publicacionId: pub.id }
      });
      
      const pubJSON = pub.toJSON();
      pubJSON.miPuntuacion = valoracion ? valoracion.puntuacion : 0;
      return pubJSON;
    }));

    res.render('index', { 
      publicaciones: publicacionesConValoracion, 
      titulo: "Mi Perfil",
      nombreUsuario: req.session.nombreUsuario,
      usuarioId: usuarioId 
    });
  } catch (error) {
    console.error('Error en Perfil Personal:', error);
    res.status(500).send('Error al cargar el perfil');
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
  obtenerFeedGlobal,
  obtenerPerfilPersonal, 
  eliminarPublicacion
};