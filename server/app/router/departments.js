const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

const departments = require('../controller/departments.js');

module.exports = function(app) {
  // create new department
  app.post('/api/departments', [authJwt.verifyToken, authJwt.isAdmin], departments.create);

  // get all department
  app.get('/api/departments', departments.findAll);

  // get a single department by id
  app.get('/api/departments/:id', departments.findById);

  // update a department by id
  app.put('/api/departments/:id', [authJwt.verifyToken, authJwt.isAdmin], departments.update);

  // delete a department by id
  app.delete('/api/departments/:id', [authJwt.verifyToken, authJwt.isAdmin], departments.delete);

};
