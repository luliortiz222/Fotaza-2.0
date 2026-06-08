const Coleccion = require('../models/Coleccion');
const Publicacion = require('../models/Publicacion');
const ColeccionPublicacion = require('../models/ColeccionPublicacion');

const crearColeccion = async (req, res) => {
  try {
    const { nombre, descripcion } = req.body;
    const usuarioIdTemp = req.session.usuarioId || 1;

    if (!nombre) {
      return res.status(400).json({
        mensaje: 'El nombre de la colección es obligatorio.'
      });
    }

    await Coleccion.create({
      nombre,
      descripcion,
      usuarioId: usuarioIdTemp
    });

    return res.redirect('/mis-colecciones');

  } catch (error) {
    console.error('Error en crearColeccion:', error);
    res.status(500).json({
      mensaje: 'Hubo un error al crear la colección.'
    });
  }
};

const obtenerMisColecciones = async (req, res) => {
  try {
    const usuarioIdTemp = req.session.usuarioId || 1;

    const colecciones = await Coleccion.findAll({
      where: { usuarioId: usuarioIdTemp }
    });

    res.status(200).json(colecciones);
  } catch (error) {
    console.error('Error en obtenerMisColecciones:', error);
    res.status(500).json({ mensaje: 'Hubo un error al obtener las colecciones.' });
  }
};

const mostrarColecciones = async (req, res) => {
  try {
    const usuarioIdTemp = req.session.usuarioId; 

    if (!Coleccion.associations.publicaciones) {
      const Publicacion = require('../models/Publicacion');
      const ColeccionPublicacion = require('../models/ColeccionPublicacion');
      
      Coleccion.belongsToMany(Publicacion, { 
        through: ColeccionPublicacion,
        foreignKey: 'ColeccionId',
        otherKey: 'PublicacionId',
        as: 'publicaciones'
      });
    }

    const colecciones = await Coleccion.findAll({
      where: { usuarioId: usuarioIdTemp },
      include: [
        {
          model: require('../models/Publicacion'),
          as: 'publicaciones',
          through: { attributes: [] }
        }
      ]
    });

    console.log("=== DATOS ENVIADOS A PUG ===");
    console.log(JSON.stringify(colecciones, null, 2));

    res.render('misColecciones', { colecciones });

  } catch (error) {
    console.error("ERROR AL RENDERIZAR VISTA:", error);
    res.status(500).send('Error al cargar colecciones');
  }
};

const agregarPublicacion = async (req, res) => {
  try {
    const { coleccionId, publicacionId } = req.body;

    const coleccion = await Coleccion.findByPk(coleccionId);
    if (!coleccion) {
      return res.status(404).send('Colección no encontrada');
    }

    const publicacion = await Publicacion.findByPk(publicacionId);
    if (!publicacion) {
      return res.status(404).send('Publicación no encontrada');
    }

    await ColeccionPublicacion.create({
      ColeccionId: coleccionId,
      PublicacionId: publicacionId
    });

    res.redirect('/mis-colecciones');

  } catch (error) {
    console.error("ERROR CRÍTICO EN AGREGAR:", error);
    res.status(500).send('Error al agregar publicación');
  }
};

module.exports = {
  crearColeccion,
  obtenerMisColecciones,
  mostrarColecciones, 
  agregarPublicacion
};