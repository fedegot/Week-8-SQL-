require("dotenv").config();
const { Sequelize, DataTypes, Op } = require("sequelize");

const connection = new Sequelize(
  process.env.DB_DATABASE,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: process.env.DB_DIALECT,
    logging: false, ///clean log
  }
);

const Card = connection.define(
  "Card",
  {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },

    description: {
      type: DataTypes.STRING,
      allowNull: false,
    },

    cost: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  },
  {
    indexed: [{ unique: true, fields: ["name"] }],
  }
);

const main = async () => {
  try {
    await connection.authenticate();
    await Card.sync({ alter: true });

    // Create then save in 2 steps
    const stuffy_doll = Card.build({
      name: "Stuffy Doll",
      cost: 5,
      description:
        "Indestructible\nAs Stuffy Doll enters the battlefield, choose a player.\nWhenever Stuffy Doll is dealt damage, it deals that much damage to the chosen player.\nTap: Stuffy Doll deals 1 damage to itself.",
    });

    await stuffy_doll.save();

    // Create and save in 1 step
    await Card.create({
      name: "Meteor Golem",
      cost: 7,
      description:
        "When this enters the battlefield destroy target nonland permanent an opponent controls",
    });

    // SELECT name, description FROM cards WHERE name = "Stuffy Doll" OR cost = 7;

    const results = await Card.findAll({
      attributes: ["name", "description"],
      where: {
        [Op.or]: [{ name: "Stuffy Doll" }, { cost: 7 }],
      },
    });

    for (let card of results) {
      console.log(`Card: ${card.name} -> ${card.description}`);
    }

    await Card.update(
      { name: "Precursor Golem" },
      {
        where: {
          name: "Meteor Golem",
        },
      }
    );

    for (let card of await Card.findAll()) {
      console.log(`Card: ${card.name} -> ${card.description}`);
    }

    await Card.destroy({
      where: {
        [Op.or]: [{ name: "Stuffy Doll" }, { name: "Precursor Golem" }],
      },
    });

    for (let card of await Card.findAll()) {
      console.log(`Card: ${card.name} -> ${card.description}`);
    }

    await Card.create({
      name: "Meteor Golem",
      cost: 7,
      description:
        "When this enters the battlefield destroy target nonland permanent an opponent controls",
    });

    for (let card of await Card.findAll()) {
      console.log(`Card: ${card.name} -> ${card.description}`);
    }

    await Card.truncate();

    for (let card of await Card.findAll()) {
      console.log(`Card: ${card.name} -> ${card.description}`);
    }

    console.log("Connection has been successfully established");
  } catch (error) {
    console.error("Unable to connect to the database:", error);
  }

  await connection.close();
  process.exit();
};

main();
