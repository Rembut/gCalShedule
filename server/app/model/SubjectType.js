module.exports = (sequelize, Sequelize) => {
  const SubjectType = sequelize.define('subjectTypes', {
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
  
  return SubjectType;
}