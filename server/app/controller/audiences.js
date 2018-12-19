const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Audience = db.audience;

exports.create = (req, res) => {  
  Audience.create({  
    name: req.body.name,
    numberOfSeats: req.body.numberOfSeats,
    numberOfComputers: req.body.numberOfComputers
  }).then(audience => {   
    res.send(audience);
  });
};
 
exports.findAll = (req, res) => {
  Audience.findAll().then(audiences => {
    res.send(audiences);
  });
};
 
exports.findById = (req, res) => {  
  Audience.findById(req.params.id).then(audience => {
    res.send(audience);
  })
};

exports.update = (req, res) => {
  const id = req.params.id;
  Audience.update({name: req.body.name, numberOfSeats: req.body.numberOfSeats, numberOfComputers: req.body.numberOfComputers}, 
    { where: {id: id} }
    ).then(() => {
      res.status(200).send("updated successfully a audience with id = " + id);
    });
};
 
exports.delete = (req, res) => {
  const id = req.params.id;
  Audience.destroy({
    where: { id: id }
  }).then(() => {
    res.status(200).send('deleted successfully a audience with id = ' + id);
  });
};