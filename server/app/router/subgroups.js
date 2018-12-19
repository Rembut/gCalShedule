const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

const subgroups = require('../controller/subgroups.js');

module.exports = function(app) {
  // create new subgroup
  app.post('/api/subgroups', [authJwt.verifyToken, authJwt.isAdmin], subgroups.create);

  // get all subgroups
  app.get('/api/subgroups', subgroups.findAll);

  // get a single subgroup by id
  app.get('/api/subgroups/:id', subgroups.findById);

  // update a subgroup by id
  app.put('/api/subgroups/:id', [authJwt.verifyToken, authJwt.isAdmin], subgroups.update);

  // delete a subgroup by id
  app.delete('/api/subgroups/:id', [authJwt.verifyToken, authJwt.isAdmin], subgroups.delete);

};
