const Usuario = require('../models/Usuario');

const registrarUsuario = async (req, res) => {
  try {
    console.log('Datos recibidos del formulario:', req.body);
    const { nombre, usuario, email, password } = req.body;

    if (!nombre || !usuario || !email || !password) {
      return res.status(400).json({ mensaje: 'Todos los campos son obligatorios.' });
    }

    const emailExiste = await Usuario.findOne({ where: { email } });
    if (emailExiste) {
      return res.status(400).json({ mensaje: 'El email ya está registrado.' });
    }

    const usuarioExiste = await Usuario.findOne({ where: { usuario } });
    if (usuarioExiste) {
      return res.status(400).json({ mensaje: 'El nombre de usuario ya está en uso.' });
    }

    await Usuario.create({
      nombre,
      usuario,
      email,
      password
    });

    console.log(`¡Usuario @${usuario} creado con éxito en Postgres! Redirigiendo...`);
    return res.redirect('/login');

  } catch (error) {
    console.error('Error en registrarUsuario:', error);
    if (!res.headersSent) {
      return res.status(500).json({ mensaje: 'Hubo un error en el servidor.' });
    }
  }
};

const loginUsuario = async (req, res) => {
  try {
    const { email, password } = req.body;

    if (!email || !password) {
      return res.status(400).send('<h1>Error: Todos los campos son obligatorios.</h1>');
    }

    const usuario = await Usuario.findOne({ where: { email } });

    if (!usuario || usuario.password !== password) {
      return res.status(401).send('<h1>Error: Credenciales incorrectas.</h1>');
    }

    req.session.usuarioId = usuario.id;
    req.session.nombreUsuario = usuario.usuario;

    console.log(`¡@${usuario.usuario} inició sesión correctamente!`);
    return res.redirect('/'); 

  } catch (error) {
    console.error('Error en loginUsuario:', error);
    return res.status(500).send('<h1>Hubo un error en el servidor.</h1>');
  }
};

module.exports = {
  registrarUsuario,
  loginUsuario
};