require("dotenv").config();
const yargs = require("yargs/yargs");
const { hideBin } = require("yargs/helpers");
const argv = yargs(hideBin(process.argv)).argv;

const app = (commandLineInput) => {
  if (commandLineInput.add) {
      if (commandLineInput.movie) {
          console.log(`we are adding ${commandLineInput.title} with the actor ${commandLineInput.actor}`)  //
      } else if (commandLineInput.album){
          console.log("we are adding to Albums")
      }
    console.log("asdasda");
  } else if () {
    console.log("nothing");
  }
};

app(commandLineInput);