const { Sequelize } = require("sequelize");
const { Movie } = require("../models/models");
const chalk = require("chalk");

const addMovie = async (movieObj) => {
  try {
    const movie = await Movie.create(movieObj);
    console.log(chalk.red.bold(`We added ${movie.title}.`));
  } catch (error) {
    console.log(error);
  }
};

const remMovie = async () => {
  try {
    const movie = await Movie.destroy({
      where: {},
      truncate: true,
    });
    console.log(chalk.red.bold(`We cancelled ${movie.title}`));
  } catch (error) {
    console.log(error);
  }
};

// #############################################UPDATE
const updMovie = async () => {
  try {
    await Movie.update();
  } catch (error) {
    console.log(error);
  }
};
// #############################################

const listMovies = async () => {
  try {
    const movies = await Movie.findAll({});
    console.log(
      chalk.red.bold(movies.every((movie) => movie instanceof Movie))
    );
    console.log(
      chalk.red.bold("All Movies: ", JSON.stringify(movies, null, 2))
    );
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  addMovie,
  listMovies,
  remMovie,
  updMovie,
};
