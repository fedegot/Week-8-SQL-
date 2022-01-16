require("dotenv").config();

const yargs = require("yargs/yargs");
const { hideBin } = require("yargs/helpers");
const commandLineInput = yargs(hideBin(process.argv)).argv;

const { Movie } = require("./models/models");
const connection = require("./db/connection");
const { addMovie, listMovies, remMovie, updMovie } = require("./utils/index");
const chalk = require("chalk");

const app = async (commandLineInput) => {
  try {
    await connection.authenticate();
  } catch (error) {
    console.log(error);
  }

  try {
    if (commandLineInput.info) {
      console.log(
        chalk.red.bold(
          `\n\n --add --title --actor --rating \n\n --list read a list of movies added \n\n --delete for cancel a movie from the list \n\n --update for update a movies title\n\n`
        )
      );
    }
    if (commandLineInput.add) {
      // add
      await Movie.sync({ alter: true });
      await addMovie({
        title: commandLineInput.title,
        actor: commandLineInput.actor,
        rating: commandLineInput.rating,
      });
    } else if (commandLineInput.list) {
      //list
      await listMovies();
    } else if (commandLineInput.delete) {
      //delete
      await Movie.sync({ alter: true });
      await remMovie({
        title: commandLineInput.title,
        actor: commandLineInput.actor,
        rating: commandLineInput.rating,
      });
      //update
    } else if (commandLineInput.update) {
      await Movie.sync({ alter: true });
      await Movie.update(
        { title: commandLineInput.ntitle },
        { where: { title: commandLineInput.title } }
      );
    }
    console.log(chalk.red.bold(`We updated ${commandLineInput.title}`));
    connection.close();
    process.exit();
  } catch (error) {
    console.log(error);
  }
};

app(commandLineInput);
