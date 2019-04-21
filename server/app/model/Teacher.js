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
    }},
    {
      paranoid: true,
      timestamps: true,
      underscored: true
  });
  
  return Teacher;
}