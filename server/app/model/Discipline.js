module.exports = (sequelize, Sequelize) => {
  const Discipline = sequelize.define('disciplines', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
      type: Sequelize.STRING
    }
  });
  
  return Discipline;
}