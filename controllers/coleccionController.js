const Coleccion = require('../models/Coleccion');

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

    console.log("SESSION:", req.session);

    const usuarioIdTemp = req.session.usuarioId;

    const colecciones = await Coleccion.findAll({
      where: { usuarioId: usuarioIdTemp }
    });

    res.render('misColecciones', { colecciones });

  } catch (error) {
    console.error(error);
    res.status(500).send('Error al cargar colecciones');
  }
};

module.exports = {
  crearColeccion,
  obtenerMisColecciones,
  mostrarColecciones
};