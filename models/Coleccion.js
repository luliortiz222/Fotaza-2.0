const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');
const Usuario = require('./Usuario');
const Publicacion = require('./Publicacion');
const ColeccionPublicacion = require('./ColeccionPublicacion'); // tu modelo intermedio

const Coleccion = sequelize.define('Coleccion', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  nombre: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  tableName: 'colecciones',
  timestamps: true
});

Usuario.hasMany(Coleccion, { foreignKey: 'usuarioId', onDelete: 'CASCADE' });
Coleccion.belongsTo(Usuario, { foreignKey: 'usuarioId' });

Coleccion.belongsToMany(Publicacion, { 
  through: ColeccionPublicacion,
  foreignKey: 'ColeccionId',  
  otherKey: 'PublicacionId',
  as: 'publicaciones'     
});

Publicacion.belongsToMany(Coleccion, { 
  through: ColeccionPublicacion,
  foreignKey: 'PublicacionId',
  otherKey: 'ColeccionId', 
  as: 'colecciones'
});

module.exports = Coleccion;