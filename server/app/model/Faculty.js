module.exports = (sequelize, Sequelize) => {
  const Faculty = sequelize.define('faculties', {
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
  
  return Faculty;
}