module.exports = (sequelize, Sequelize) => {
  const Day = sequelize.define('days', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
      type: Sequelize.STRING
    },
    shortName: {
      type: Sequelize.STRING
    }
  });
  
  return Day;
}