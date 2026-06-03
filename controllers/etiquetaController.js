const Etiqueta = require('../models/Etiqueta');
const Publicacion = require('../models/Publicacion');

const crearEtiqueta = async (req, res) => {
  try {
    const { nombre } = req.body;

    if (!nombre) {
      return res.status(400).json({ mensaje: 'El nombre de la etiqueta es obligatorio.' });
    }

    const [etiqueta, creada] = await Etiqueta.findOrCreate({
      where: { nombre: nombre.toLowerCase().trim() }
    });

    res.status(creada ? 201 : 200).json({
      mensaje: creada ? 'Etiqueta creada con éxito.' : 'La etiqueta ya existía.',
      etiqueta
    });
  } catch (error) {
    console.error('Error en crearEtiqueta:', error);
    res.status(500).json({ mensaje: 'Hubo un error al procesar la etiqueta.' });
  }
};

module.exports = {
  crearEtiqueta
};