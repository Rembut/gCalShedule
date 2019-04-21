module.exports = (sequelize, Sequelize) => {
  const lessonNumber = sequelize.define('lessonNumbers', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    number: {
      type: Sequelize.INTEGER
    },
    timeBegin: {
      type: Sequelize.STRING
    },
    timeEnd: {
      type: Sequelize.STRING
    }},
    {
      paranoid: true,
      timestamps: true,
      underscored: true
  });
  
  return lessonNumber;
}