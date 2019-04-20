module.exports = (sequelize, Sequelize) => {
  const LessonForm = sequelize.define('lessonForms', {
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
  
  return LessonForm;
}