require('dotenv').config();

const { sequelize } = require('./db');

async function initDB() {
  try {
    await sequelize.sync();

    console.log('Tablas creadas correctamente.');
    process.exit(0);
  } catch (error) {
    console.error('Error al inicializar la base de datos:', error);
    process.exit(1);
  }
}

initDB();