const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Group = db.group;

exports.create = (req, res) => {  
  Group.create({  
    levelId: req.body.levelId,
    courceId: req.body.courceId,
    specialityId: req.body.specialityId,
    number: req.body.number
  }).then(group => {   
    res.send(group);
  });
};
 
exports.findAll = (req, res) => {
  Group.findAll().then(groups => {
    res.send(groups);
  });
};
 
exports.findById = (req, res) => {  
  Group.findById(req.params.id).then(group => {
    res.send(group);
  })
};
 

exports.update = (req, res) => {
  const id = req.params.id;
  Group.update({levelId: req.body.levelId, courceId: req.body.courceId, specialityId: req.body.specialityId, number: req.body.number}, 
    { where: {id: req.params.id} }
    ).then(() => {
      res.status(200).send("updated successfully a group with id = " + id);
    });
};
 
exports.delete = (req, res) => {
  const id = req.params.id;
  Group.destroy({
    where: { id: id }
  }).then(() => {
    res.status(200).send('deleted successfully a group with id = ' + id);
  });
};