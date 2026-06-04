const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');

const Usuario = sequelize.define('Usuario', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  nombre: {
    type: DataTypes.STRING,
    allowNull: false /*Obligatorio*/
  },
  usuario: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true, 
    validate: {
      len: [3, 30] 
    }
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true, /* No se pueden registrar dos personas con el mismo email*/
    validate: {
      isEmail: true /*Valida que tenga formato de mail real*/
    }
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  tableName: 'usuarios', /* Nombre que va a tener la tabla*/
  timestamps: true 
});

module.exports = Usuario;