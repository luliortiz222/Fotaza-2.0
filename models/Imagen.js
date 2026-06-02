const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');
const Publicacion = require('./Publicacion');

const Imagen = sequelize.define('Imagen', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  url: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  tableName: 'imagenes',
  timestamps: true
});

Publicacion.hasMany(Imagen, { foreignKey: 'publicacionId', onDelete: 'CASCADE' });
Imagen.belongsTo(Publicacion, { foreignKey: 'publicacionId' });

module.exports = Imagen;