const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Speciality = db.speciality;


exports.create = (req, res) => {  
  Speciality.create({  
    name: req.body.name,
    departmentId: req.body.departmentId
  }).then(speciality => {   
    res.send(speciality);
  });
};
 
exports.findAll = (req, res) => {
  Speciality.findAll().then(specialities => {
    res.send(specialities);
  });
};
 
exports.findById = (req, res) => {  
  Speciality.findById(req.params.id).then(speciality => {
    res.send(speciality);
  })
};

exports.update = (req, res) => {
  const id = req.params.id;
  Speciality.update({name: req.body.name, departmentId: req.body.departmentId}, 
    { where: {id: id} }
    ).then(() => {
      res.status(200).send("updated successfully a speciality with id = " + id);
    });
};
 
exports.delete = (req, res) => {
  const id = req.params.id;
  Speciality.destroy({
    where: { id: id }
  }).then(() => {
    res.status(200).send('deleted successfully a speciality with id = ' + id);
  });
};