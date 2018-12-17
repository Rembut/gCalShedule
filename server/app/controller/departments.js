const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Department = db.department;


exports.create = (req, res) => {  
  Department.create({  
    name: req.body.name,
    shortName: req.body.shortName,
    facultyId: req.body.facultyId
  }).then(department => {   
    res.send(department);
  });
};
 
exports.findAll = (req, res) => {
  Department.findAll().then(departments => {
    res.send(departments);
  });
};
 
exports.findById = (req, res) => {  
  Department.findById(req.params.id).then(department => {
    res.send(department);
  })
};
 

exports.update = (req, res) => {
  const id = req.params.id;
  Department.update( { name: req.body.name, shortName: req.body.shortName, facultyId: req.body.facultyId }, 
    { where: {id: req.params.id} }
    ).then(() => {
      res.status(200).send("updated successfully a department with id = " + id);
    });
};
 
exports.delete = (req, res) => {
  const id = req.params.id;
  Department.destroy({
    where: { id: id }
  }).then(() => {
    res.status(200).send('deleted successfully a department with id = ' + id);
  });
};