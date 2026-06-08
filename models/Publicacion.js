const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');
const Usuario = require('./Usuario');

const Publicacion = sequelize.define(
  'Publicacion',
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    titulo: DataTypes.STRING,
    descripcion: DataTypes.TEXT,
    urlImagen: DataTypes.STRING
  },
  {
    tableName: 'publicaciones',
    timestamps: true
  }
);

Usuario.hasMany(Publicacion, {
  foreignKey: 'usuarioId'
});

Publicacion.belongsTo(Usuario, {
  foreignKey: 'usuarioId'
});

module.exports = Publicacion;