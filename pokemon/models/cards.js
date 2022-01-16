const { Sequelize, DataTypes } = require("sequelize");
const connection = require("../util/database");

const pokemonCard = connection.define("PokemonCards", {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true,
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  type: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

module.exports = pokemonCard;
