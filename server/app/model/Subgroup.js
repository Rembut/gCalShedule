module.exports = (sequelize, Sequelize) => {
  const Subgroup = sequelize.define('subgroups', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    groupId: {
      type: Sequelize.INTEGER
    },
    specializationId: {
      type: Sequelize.INTEGER
    },
    studentCount: {
      type: Sequelize.INTEGER
    }
  });
  
  return Subgroup;
}