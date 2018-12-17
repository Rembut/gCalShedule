module.exports = (sequelize, Sequelize) => {
  const Сourse = sequelize.define('courses', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
      type: Sequelize.STRING
    }
  });
  
  return Сourse;
}