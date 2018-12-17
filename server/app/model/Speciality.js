module.exports = (sequelize, Sequelize) => {
  const Speciality = sequelize.define('specialities', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
      type: Sequelize.STRING
    },
    departmentId: {
      type: Sequelize.STRING
    }
  });
  
  return Speciality;
}