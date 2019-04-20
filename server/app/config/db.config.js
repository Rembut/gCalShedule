const env = require('./env.js');
 
const Sequelize = require('sequelize');
const sequelize = new Sequelize(env.database, env.username, env.password, {
  host: env.host,
  dialect: env.dialect,
  operatorsAliases: false,
 
  pool: {
    max: env.max,
    min: env.pool.min,
    acquire: env.pool.acquire,
    idle: env.pool.idle
  }
});
 
const db = {};
 
db.Sequelize = Sequelize;
db.sequelize = sequelize;
 
db.user = require('../model/User.js')(sequelize, Sequelize);
db.role = require('../model/Role.js')(sequelize, Sequelize);
db.audience = require('../model/Audience.js')(sequelize, Sequelize);
db.day = require('../model/Day.js')(sequelize, Sequelize);
db.department = require('../model/Department.js')(sequelize, Sequelize);
db.discipline = require('../model/Discipline.js')(sequelize, Sequelize);
db.faculty = require('../model/Faculty.js')(sequelize, Sequelize);
db.group = require('../model/Group.js')(sequelize, Sequelize);
db.lesson = require('../model/Lesson.js')(sequelize, Sequelize);
db.lessonNumber = require('../model/LessonNumber.js')(sequelize, Sequelize);
db.post = require('../model/Post.js')(sequelize, Sequelize);
db.schedule = require('../model/Schedule.js')(sequelize, Sequelize);
db.lessonForm = require('../model/LessonForm.js')(sequelize, Sequelize);
db.teacher = require('../model/Teacher.js')(sequelize, Sequelize);
db.week = require('../model/Week.js')(sequelize, Sequelize);
 
db.role.belongsToMany(db.user, { through: 'userRoles', foreignKey: 'roleId', otherKey: 'userId'});
db.user.belongsToMany(db.role, { through: 'userRoles', foreignKey: 'userId', otherKey: 'roleId'});

module.exports = db;