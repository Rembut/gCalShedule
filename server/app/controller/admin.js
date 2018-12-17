const db = require('../config/db.config.js');
const config = require('../config/config.js');
const User = db.user;
const Role = db.role;

exports.adminBoard = (req, res) => {
  User.findOne({
    where: {id: req.userId},
    attributes: ['name', 'username', 'email'],
    include: [{
      model: Role,
      attributes: ['id', 'name'],
      through: {
        attributes: ['userId', 'roleId'],
      }
    }]
  }).then(user => {
    res.status(200).json({
      "description": "admin board",
      "user": user
    });
  }).catch(err => {
    res.status(500).json({
      "description": "can not access admin board",
      "error": err
    });
  })
}
