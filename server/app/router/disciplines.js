const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

const disciplines = require('../controller/disciplines.js');

module.exports = function(app) {
  // create new discipline
  app.post('/api/disciplines', [authJwt.verifyToken], disciplines.create);

  // get all disciplines
  app.get('/api/disciplines', disciplines.findAll);

  // get a single discipline by id
  app.get('/api/disciplines/:id', disciplines.findById);

  // update a discipline by id
  app.put('/api/disciplines/:id', [authJwt.verifyToken], disciplines.update);

  // delete a discipline by id
  app.delete('/api/disciplines/:id', [authJwt.verifyToken], disciplines.delete);

};
