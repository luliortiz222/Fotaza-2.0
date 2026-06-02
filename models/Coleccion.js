const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');
const Usuario = require('./Usuario');
const Publicacion = require('./Publicacion');

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

const ColeccionPublicacion = sequelize.define('coleccion_publicacion', {}, { timestamps: false });
Coleccion.belongsToMany(Publicacion, { through: ColeccionPublicacion });
Publicacion.belongsToMany(Coleccion, { through: ColeccionPublicacion });

module.exports = Coleccion;