const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Specialization = db.specialization;


exports.create = (req, res) => {  
  Specialization.create({  
    name: req.body.name
  }).then(specialization => {   
    res.send(specialization);
  });
};
 
exports.findAll = (req, res) => {
  Specialization.findAll().then(specializations => {
    res.send(specializations);
  });
};
 
exports.findById = (req, res) => {  
  Specialization.findById(req.params.id).then(specialization => {
    res.send(specialization);
  })
};

exports.update = (req, res) => {
  const id = req.params.id;
  Specialization.update({name: req.body.name}, 
    { where: {id: id} }
    ).then(() => {
      res.status(200).send("updated successfully a specialization with id = " + id);
    });
};
 
exports.delete = (req, res) => {
  const id = req.params.id;
  Specialization.destroy({
    where: { id: id }
  }).then(() => {
    res.status(200).send('deleted successfully a specialization with id = ' + id);
  });
};