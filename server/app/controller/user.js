const db = require('../config/db.config.js');
const User = db.user;
const Role = db.role;

exports.userContent = (req, res) => {
  User.findOne({
    where: {id: req.userId},
    attributes: ['name', 'surname', 'patronym', 'username', 'email', 'facultyId'],
    include: [{
      model: Role,
      attributes: ['id', 'name'],
      through: {
        attributes: ['userId', 'roleId'],
      }
    }]
  }).then(user => {
    res.status(200).json({
      "description": "user content page",
      "user": user
    });
  }).catch(err => {
    res.status(500).json({
      "description": "can not access user page",
      "error": err
    });
  })
}
