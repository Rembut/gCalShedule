const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

const audiences = require('../controller/audiences.js');

module.exports = function(app) {
  // create new audience
  app.post('/api/audiences', [authJwt.verifyToken], audiences.create);

  // get all audiences
  app.get('/api/audiences', audiences.findAll);

  // get a single audience by id
  app.get('/api/audiences/:id', audiences.findById);

  // update a audience by id
  app.put('/api/audiences/:id', [authJwt.verifyToken], audiences.update);

  // delete a audience by id
  app.delete('/api/audiences/:id', [authJwt.verifyToken], audiences.delete);

};

