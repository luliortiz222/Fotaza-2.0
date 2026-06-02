const { sequelize } = require('../config/db');
const Publicacion = require('./Publicacion');
const Etiqueta = require('./Etiqueta');

const PublicacionEtiqueta = sequelize.define('PublicacionEtiqueta', {}, {
  tableName: 'publicacion_etiqueta',
  timestamps: false
});

Publicacion.belongsToMany(Etiqueta, { through: PublicacionEtiqueta, foreignKey: 'publicacionId' });
Etiqueta.belongsToMany(Publicacion, { through: PublicacionEtiqueta, foreignKey: 'etiquetaId' });

module.exports = PublicacionEtiqueta;