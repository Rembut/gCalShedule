module.exports = (sequelize, Sequelize) => {
  const Lesson = sequelize.define('lessons', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }},
    {
      paranoid: true,
      timestamps: true,
      underscored: true
  });
  return Lesson;
}