const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

const specialities = require('../controller/specialities.js');

module.exports = function(app) {
  // create new specialitie
  app.post('/api/specialities', [authJwt.verifyToken, authJwt.isAdmin], specialities.create);

  // get all specialities
  app.get('/api/specialities', specialities.findAll);

  // get a single specialitie by id
  app.get('/api/specialities/:id', specialities.findById);

  // update a specialitie by id
  app.put('/api/specialities/:id', [authJwt.verifyToken, authJwt.isAdmin], specialities.update);

  // delete a specialitie by id
  app.delete('/api/specialities/:id', [authJwt.verifyToken, authJwt.isAdmin], specialities.delete);

};
