module.exports = (sequelize, Sequelize) => {
  const Department = sequelize.define('departments', {
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
    },
    facultyId: {
      type: Sequelize.INTEGER
    }
  });
  
  return Department;
}