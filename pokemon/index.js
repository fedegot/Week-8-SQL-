require("dotenv").config();
const connection = require("./util/database");
const { Sequelize } = require("sequelize");
const pokemonCard = require("./models/cards");

const main = async () => {
  try {
    await connection.authenticate();
    await pokemonCard.sync({ alter: true });
    console.log("You are connect");
  } catch (error) {
    console.error("Unable to connect to the database:", error);
  }

  await connection.close();
  process.exit();
};

main();

// connection
//   .sync()
//   .then((result) => {
//     console.log(result);
//   })
//   .catch((err) => {
//     console.log(err);
//   });
