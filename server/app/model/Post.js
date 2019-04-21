module.exports = (sequelize, Sequelize) => {
  const Post = sequelize.define('posts', {
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
    }},
    {
      paranoid: true,
      timestamps: true,
      underscored: true
  });
  
  return Post;
}