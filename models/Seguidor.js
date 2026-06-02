const { sequelize } = require('../config/db');
const Usuario = require('./Usuario');

const Seguidor = sequelize.define('Seguidor', {}, {
  tableName: 'seguidores',
  timestamps: true
});

Usuario.belongsToMany(Usuario, { as: 'Seguidos', through: Seguidor, foreignKey: 'seguidorId' });
Usuario.belongsToMany(Usuario, { as: 'Seguidores', through: Seguidor, foreignKey: 'usuarioId' });

module.exports = Seguidor;