module.exports = (sequelize, Sequelize) => {
  const Level = sequelize.define('levels', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
      type: Sequelize.STRING
    }
  });
  
  return Level;
}