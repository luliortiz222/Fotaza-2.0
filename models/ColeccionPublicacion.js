const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');

const ColeccionPublicacion = sequelize.define('ColeccionPublicacion', {}, {
  tableName: 'coleccion_publicacions', 
  timestamps: false 
});

module.exports = ColeccionPublicacion;