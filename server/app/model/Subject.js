module.exports = (sequelize, Sequelize) => {
  const Subject = sequelize.define('subjects', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    disciplineId: {
      type: Sequelize.INTEGER
    },
    subjectTypeId: {
      type: Sequelize.INTEGER
    },
    teacherId: {
      type: Sequelize.INTEGER
    },
    flowId: {
      type: Sequelize.INTEGER
    }
  });
  
  return Subject;
}