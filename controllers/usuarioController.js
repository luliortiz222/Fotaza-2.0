const Usuario = require('../models/Usuario');

const registrarUsuario = async (req, res) => {
  try {
    console.log('Datos recibidos del formulario:', req.body);
    const { nombre, usuario, email, password } = req.body;

    if (!nombre || !usuario || !email || !password) {
      return res.status(400).render('registro', { error: 'Todos los campos son obligatorios.' });
    }

    const emailExiste = await Usuario.findOne({ where: { email } });
    if (emailExiste) {
      return res.status(400).render('registro', { error: 'El email ya está registrado.' });
    }

    const usuarioExiste = await Usuario.findOne({ where: { usuario } });
    if (usuarioExiste) {
      return res.status(400).render('registro', { error: 'El nombre de usuario ya está en uso.' });
    }

    await Usuario.create({
      nombre,
      usuario,
      email,
      password: password
    });

    console.log(`¡Usuario @${usuario} creado con éxito en Postgres! Redirigiendo...`);
    return res.redirect('/login');

  } catch (error) {
    console.error('Error en registrarUsuario:', error);
    if (!res.headersSent) {
      return res.status(500).render('registro', { error: 'Hubo un error en el servidor.' });
    }
  }
};

const loginUsuario = async (req, res) => {
  try {
    const { email, password } = req.body;
    if (!email || !password) return res.status(400).render('login', { error: 'Campos obligatorios.' });

    const usuario = await Usuario.findOne({ where: { email } });
    if (!usuario || usuario.password !== password) {
      return res.status(401).render('login', { error: 'Credenciales incorrectas.' });
    }

    req.session.usuarioId = usuario.id;
    req.session.nombreUsuario = usuario.usuario;

    req.session.save(() => {
      console.log(`¡@${usuario.usuario} inició sesión!`);
      return res.redirect('/'); 
    });

  } catch (error) {
    console.error('Error en loginUsuario:', error);
    return res.status(500).render('login', { error: 'Error en el servidor.' });
  }
};

module.exports = {
  registrarUsuario,
  loginUsuario
};