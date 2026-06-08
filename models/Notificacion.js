const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');
const Usuario = require('./Usuario');

const Notificacion = sequelize.define('Notificacion', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tipo: {
    type: DataTypes.STRING,
    allowNull: false
  },
  mensaje: {
    type: DataTypes.STRING,
    allowNull: false
  },
  leido: {
    type: DataTypes.BOOLEAN,
    defaultValue: false
  }
}, {
  tableName: 'notificaciones',
  timestamps: true
});

Usuario.hasMany(Notificacion, { foreignKey: 'usuarioId', onDelete: 'CASCADE' });
Notificacion.belongsTo(Usuario, { foreignKey: 'usuarioId' });

module.exports = Notificacion;