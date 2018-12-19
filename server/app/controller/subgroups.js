const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Subgroup = db.subgroup;

exports.create = (req, res) => {  
  Subgroup.create({  
    groupId: req.body.groupId,
    specializationId: req.body.specializationId,
    studentCount: req.body.studentCount
  }).then(subgroup => {   
    res.send(subgroup);
  });
};
 
exports.findAll = (req, res) => {
  Subgroup.findAll().then(subgroups => {
    res.send(subgroups);
  });
};
 
exports.findById = (req, res) => {  
  Subgroup.findById(req.params.id).then(subgroup => {
    res.send(subgroup);
  })
};
 

exports.update = (req, res) => {
  const id = req.params.id;
  Subgroup.update({groupId: req.body.groupId, specializationId: req.body.specializationId, studentCount: req.body.studentCount}, 
    { where: {id: req.params.id} }
    ).then(() => {
      res.status(200).send("updated successfully a subgroup with id = " + id);
    });
};
 
exports.delete = (req, res) => {
  const id = req.params.id;
  Subgroup.destroy({
    where: { id: id }
  }).then(() => {
    res.status(200).send('deleted successfully a subgroup with id = ' + id);
  });
};