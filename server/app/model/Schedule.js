module.exports = (sequelize, Sequelize) => {
  const Schedule = sequelize.define('schedules', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
      type: Sequelize.STRING
    },
    usesFrom: {
      type: Sequelize.DATE
    },
    usesTo: {
      type: Sequelize.DATE
    }},
    {
      paranoid: true,
      timestamps: true,
      underscored: true
  });
  
  return Schedule;
}