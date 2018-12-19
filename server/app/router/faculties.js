const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

const faculties = require('../controller/faculties.js');

module.exports = function(app) {
 // create new faculty
  app.post('/api/faculties', [authJwt.verifyToken, authJwt.isAdmin], faculties.create);

  // get all faculties
  app.get('/api/faculties', faculties.findAll);

  // get a single faculty by id
  app.get('/api/faculties/:id', faculties.findById);

  // update a faculty by id
  app.put('/api/faculties/:id', [authJwt.verifyToken, authJwt.isAdmin], faculties.update);

  // delete a faculty by id
  app.delete('/api/faculties/:id', [authJwt.verifyToken, authJwt.isAdmin], faculties.delete);

};
