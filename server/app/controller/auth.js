const db = require('../config/db.config.js');
const config = require('../config/config.js');
const User = db.user;
const Role = db.role;

const Op = db.Sequelize.Op;

var bcrypt = require('bcryptjs');
var jwt = require('jsonwebtoken');

exports.signup = (req, res) => {

  console.log("signup");
  
  User.create({
    name: req.body.name,
    surname: req.body.surname,
    patronym: req.body.patronym,
    username: req.body.username,
    email: req.body.email,
    password: bcrypt.hashSync(req.body.password, 8),
    facultyId: req.body.facultyId
  }).then(user => {
    Role.findAll({
      where: {
      name: {
        [Op.or]: req.body.roles
      }
      }
    }).then(roles => {
      user.setRoles(roles).then(() => {
        res.send("user registered successfully");
      });
    }).catch(err => {
      res.status(500).send("error" + err);
    });
  }).catch(err => {
    res.status(500).send("error" + err);
  })
}

exports.signin = (req, res) => {

  console.log("signin");
  
  User.findOne({
    where: {
      email: req.body.email
    }
  }).then(user => {
    if (!user) {
      return res.status(404).send('user not found');
    }

    var passwordIsValid = bcrypt.compareSync(req.body.password, user.password);
    if (!passwordIsValid) {
      return res.status(401).send({ auth: false, accessToken: null, reason: "invalid password" });
    }
    
    var token = jwt.sign({ id: user.id }, config.secret, {
      expiresIn: 86400 
    });
    
    res.status(200).send({ auth: true, accessToken: token });
    
  }).catch(err => {
    res.status(500).send('error' + err);
  });
}