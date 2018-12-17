module.exports = (sequelize, Sequelize) => {
  const Audience = sequelize.define('audiences', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
      type: Sequelize.STRING
    },
    numberOfSeats: {
      type: Sequelize.INTEGER
    },
    numberOfComputers: {
      type: Sequelize.INTEGER
    }
  });
  
  return Audience;
}