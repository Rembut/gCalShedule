const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Discipline = db.discipline;


exports.create = (req, res) => {  
  Discipline.create({  
    name: req.body.name
  }).then(discipline => {   
    res.send(discipline);
  });
};
 
exports.findAll = (req, res) => {
  Discipline.findAll().then(disciplines => {
    res.send(disciplines);
  });
};
 
exports.findById = (req, res) => {  
  Discipline.findById(req.params.id).then(discipline => {
    res.send(discipline);
  })
};

exports.update = (req, res) => {
  const id = req.params.id;
  Discipline.update({name: req.body.name}, 
    { where: {id: id} }
    ).then(() => {
      res.status(200).send("updated successfully a discipline with id = " + id);
    });
};
 
exports.delete = (req, res) => {
  const id = req.params.id;
  Discipline.destroy({
    where: { id: id }
  }).then(() => {
    res.status(200).send('deleted successfully a discipline with id = ' + id);
  });
};