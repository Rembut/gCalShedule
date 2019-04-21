module.exports = (sequelize, Sequelize) => {
  const Week = sequelize.define('weeks', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    letter: {
      type: Sequelize.STRING
    }},
    {
      paranoid: true,
      timestamps: true,
      underscored: true
  });

  return Week;
}