const { Sequelize } = require("sequelize");

const connection = new Sequelize(
  process.env.DB_DATABASE,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: process.env.DB_DIAL,
    logging: false, ///clean log
  }
);

// const connection = new Sequelize("master32", "root", "123stella", {
//   host: "localhost",
//   dialect: "mysql",
//   logging: false, ///clean log
// });

// const connection = new Sequelize(process.env.DB_URI);

module.exports = connection;
