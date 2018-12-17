module.exports = (sequelize, Sequelize) => {
  const Specialization = sequelize.define('specializations', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
      type: Sequelize.STRING
    }
  });
  
  return Specialization;
}