module.exports = (sequelize, Sequelize) => {
  const Teacher = sequelize.define('teachers', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
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
    } 
  });
  
  return Teacher;
}