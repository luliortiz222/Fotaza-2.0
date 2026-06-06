const estaLogueado = (req, res, next) => {
  if (req.session && req.session.usuarioId) {
    return next();
  }
  return res.redirect('/login?mensaje=Para interactuar debes iniciar sesión o registrarte');
};

module.exports = { estaLogueado };