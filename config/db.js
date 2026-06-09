const { Sequelize } = require('sequelize');

let sequelize;

if (process.env.DATABASE_URL) {
  sequelize = new Sequelize(process.env.DATABASE_URL, {
    dialect: 'postgres',
    logging: false,
    dialectOptions: {
      ssl: {
        require: true,
        rejectUnauthorized: false 
      }
    }
  });
} else {
  sequelize = new Sequelize(
    process.env.DB_NAME,
    process.env.DB_USER,
    process.env.DB_PASSWORD,
    {
      host: process.env.DB_HOST,
      port: process.env.DB_PORT,
      dialect: 'postgres',
      logging: false, 
    }
  );
}

const conectarDB = async () => {
  try {
    await sequelize.authenticate();
    console.log('Conexión exitosa a PostgreSQL con Sequelize establecida.');
  } catch (error) {
    console.error('Error al conectar a la base de datos:', error);
  }
};

module.exports = { sequelize, conectarDB };