const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');
const Usuario = require('./Usuario');
const Publicacion = require('./Publicacion');

const Valoracion = sequelize.define('Valoracion', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  puntuacion: {
    type: DataTypes.INTEGER,
    allowNull: false,
    validate: {
      min: 1,
      max: 5
    }
  }
}, {
  tableName: 'valoraciones',
  timestamps: true
});

Usuario.hasMany(Valoracion, { foreignKey: 'usuarioId', onDelete: 'CASCADE' });
Valoracion.belongsTo(Usuario, { foreignKey: 'usuarioId' });

Publicacion.hasMany(Valoracion, { foreignKey: 'publicacionId', onDelete: 'CASCADE' });
Valoracion.belongsTo(Publicacion, { foreignKey: 'publicacionId' });

module.exports = Valoracion;