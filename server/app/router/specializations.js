const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

const specializations = require('../controller/specializations.js');

module.exports = function(app) {
  // create new specialization
  app.post('/api/specializations', [authJwt.verifyToken, authJwt.isAdmin], specializations.create);

  // get all specializations
  app.get('/api/specializations', specializations.findAll);

  // get a single specialization by id
  app.get('/api/specializations/:id', specializations.findById);

  // update a specialization by id
  app.put('/api/specializations/:id', [authJwt.verifyToken, authJwt.isAdminauthJwt.verifyToken], specializations.update);

  // delete a specialization by id
  app.delete('/api/specializations/:id', [authJwt.verifyToken, authJwt.isAdmin], specializations.delete);

};