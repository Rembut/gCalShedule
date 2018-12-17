const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Faculty = db.faculty;


exports.create = (req, res) => {  
  Faculty.create({  
    name: req.body.name,
    shortName: req.body.shortName
  }).then(faculty => {   
    res.send(faculty);
  });
};
 
exports.findAll = (req, res) => {
  Faculty.findAll().then(faculties => {
    res.send(faculties);
  });
};
 
exports.findById = (req, res) => {  
  Faculty.findById(req.params.id).then(faculty => {
    res.send(faculty);
  })
};

exports.update = (req, res) => {
  const id = req.params.id;
  Faculty.update( { name: req.body.name, shortName: req.body.shortName}, 
    { where: {id: req.params.id} }
    ).then(() => {
      res.status(200).send("updated successfully a faculty with id = " + id);
    });
};
 
exports.delete = (req, res) => {
  const id = req.params.id;
  Faculty.destroy({
    where: { id: id }
  }).then(() => {
    res.status(200).send('deleted successfully a faculty with id = ' + id);
  });
};