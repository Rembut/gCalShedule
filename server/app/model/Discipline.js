module.exports = (sequelize, Sequelize) => {
  const Discipline = sequelize.define('disciplines', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
      type: Sequelize.STRING
    }},
    {
      paranoid: true,
      timestamps: true,
      underscored: true
  });
  
  return Discipline;
}