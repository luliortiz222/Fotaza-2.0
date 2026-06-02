const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');
const Usuario = require('./Usuario');
const Publicacion = require('./Publicacion');

const Comentario = sequelize.define('Comentario', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  contenido: {
    type: DataTypes.TEXT,
    allowNull: false
  }
}, {
  tableName: 'comentarios',
  timestamps: true
})

Usuario.hasMany(Comentario, { foreignKey: 'usuarioId', onDelete: 'CASCADE' });
Comentario.belongsTo(Usuario, { foreignKey: 'usuarioId' });

Publicacion.hasMany(Comentario, { foreignKey: 'publicacionId', onDelete: 'CASCADE' });
Comentario.belongsTo(Publicacion, { foreignKey: 'publicacionId' });

module.exports = Comentario;