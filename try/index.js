const express = require("express");
const app = express();

const db = require("./models");

const { User } = require("./models");

app.get("/select", (req, res) => {
  res.send("select");
});

app.get("/insert", (req, res) => {
  User.create({
    firstName: "Pedro",
    age: 19,
  }).catch((err) => {
    if (err) {
      console.log(err);
    }
  });
  res.send("insert");
});

app.get("/delete", (req, res) => {
  res.send("delete");
});

db.sequelize.sync().then((req) => {
  app.listen(3001, () => {
    console.log("server running");
  });
});
