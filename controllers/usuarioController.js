const Usuario = require('../models/Usuario');

const registrarUsuario = async (req, res) => {
  try {
    const { nombre, email, password } = req.body;

    if (!nombre || !email || !password) {
      return res.status(400).json({ mensaje: 'Todos los campos son obligatorios.' });
    }

    const usuarioExiste = await Usuario.findOne({ where: { email } });
    if (usuarioExiste) {
      return res.status(400).json({ mensaje: 'El email ya está registrado.' });
    }

    const nuevoUsuario = await Usuario.create({
      nombre,
      email,
      password
    });

    res.status(201).json({
      mensaje: '¡Usuario registrado con éxito!',
      usuario: { id: nuevoUsuario.id, nombre: nuevoUsuario.nombre, email: nuevoUsuario.email }
    });

  } catch (error) {
    console.error('Error en registrarUsuario:', error);
    res.status(500).json({ mensaje: 'Hubo un error en el servidor.' });
  }
};

module.exports = {
  registrarUsuario
};