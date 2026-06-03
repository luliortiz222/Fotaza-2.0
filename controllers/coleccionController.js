const Coleccion = require('../models/Coleccion');

const crearColeccion = async (req, res) => {
  try {
    const { nombre, descripcion } = req.body;
    const usuarioIdTemp = req.session.usuarioId || 1;

    if (!nombre) {
      return res.status(400).json({ mensaje: 'El nombre de la colección es obligatorio.' });
    }

    const nuevaColeccion = await Coleccion.create({
      nombre,
      descripcion,
      usuarioId: usuarioIdTemp
    });

    res.status(201).json({
      mensaje: '¡Colección creada con éxito!',
      coleccion: nuevaColeccion
    });

  } catch (error) {
    console.error('Error en crearColeccion:', error);
    res.status(500).json({ mensaje: 'Hubo un error al crear la colección.' });
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

module.exports = {
  crearColeccion,
  obtenerMisColecciones
};