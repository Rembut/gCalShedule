module.exports = (sequelize, Sequelize) => {
  const Lesson = sequelize.define('lessons', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    audienceId: {
      type: Sequelize.INTEGER
    },
    subjectId: {
      type: Sequelize.INTEGER
    },
    weekId: {
      type: Sequelize.INTEGER
    },
    dayId: {
      type: Sequelize.INTEGER
    },
    numberId: {
      type: Sequelize.INTEGER
    },
    subgroupId: {
      type: Sequelize.INTEGER
    },
    scheduleId: {
      type: Sequelize.INTEGER
    }
  });
  return Lesson;
}