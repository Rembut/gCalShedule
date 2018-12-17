module.exports = (sequelize, Sequelize) => {
  const Group = sequelize.define('groups', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    levelId: {
      type: Sequelize.INTEGER
    },
    courceId: {
      type: Sequelize.INTEGER
    },
    specialityId: {
      type: Sequelize.INTEGER
    },
    number: {
      type: Sequelize.STRING
    }
  });
  return Group;
}