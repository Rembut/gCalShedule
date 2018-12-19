const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Teacher = db.teacher;


exports.create = (req, res) => {  
  Teacher.create({  
    name: req.body.name,
    patronym: req.body.shortName,
    postId: req.body.postId,
    departmentId: req.body.departmentId
  }).then(teacher => {   
    res.send(teacher);
  });
};
 
exports.findAll = (req, res) => {
  Teacher.findAll().then(teachers => {
    res.send(teachers);
  });
};
 
exports.findById = (req, res) => {  
  Teacher.findById(req.params.id).then(teacher => {
    res.send(teacher);
  })
};

exports.update = (req, res) => {
  const id = req.params.id;
  Teacher.update({name: req.body.name, patronym: req.body.shortName, postId: req.body.postId, departmentId: req.body.departmentId}, 
    { where: {id: id} }
    ).then(() => {
      res.status(200).send("updated successfully a teacher with id = " + id);
    });
};
 
exports.delete = (req, res) => {
  const id = req.params.id;
  Teacher.destroy({
    where: { id: id }
  }).then(() => {
    res.status(200).send('deleted successfully a teacher with id = ' + id);
  });
};