module.exports = (sequelize, Sequelize) => {
  const Lesson = sequelize.define('lessons', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    disciplineId: {
      type: Sequelize.INTEGER
    },
    teacherId: {
      type: Sequelize.INTEGER
    },
    groupId: {
      type: Sequelize.INTEGER
    },
    lessonFormId: {
      type: Sequelize.INTEGER
    },
    lessonNumberId: {
      type: Sequelize.INTEGER
    },
    day: {
      type: Sequelize.INTEGER
    },
    week: {
      type: Sequelize.INTEGER
    },
    scheduleId: {
      type: Sequelize.INTEGER
    }
  });
  return Lesson;
}