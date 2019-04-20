module.exports = (sequelize, Sequelize) => {
  const Teacher = sequelize.define('teachers', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    surname: {
      type: Sequelize.STRING
    },
    name: {
      type: Sequelize.STRING
    },
    patronym: {
      type: Sequelize.STRING
    },
    postId: {
      type: Sequelize.INTEGER
    },
    departmentId: {
      type: Sequelize.INTEGER
    },
    facultyId: {
      type: Sequelize.INTEGER
    } 
  });
  
  return Teacher;
}