const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

const teachers = require('../controller/teachers.js');

module.exports = function(app) {
  // create new teacher
  app.post('/api/teachers', [authJwt.verifyToken, authJwt.isAdmin], teachers.create);

  // get all teachers
  app.get('/api/teachers', teachers.findAll);

  // get a single teacher by id
  app.get('/api/teachers/:id', teachers.findById);

  // update a teacher by id
  app.put('/api/teachers/:id', [authJwt.verifyToken, authJwt.isAdmin], teachers.update);

  // delete a teacher by id
  app.delete('/api/teachers/:id', [authJwt.verifyToken, authJwt.isAdmin], teachers.delete);

};