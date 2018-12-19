const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

const groups = require('../controller/groups.js');

module.exports = function(app) {
  // create new group
  app.post('/api/groups', [authJwt.verifyToken, authJwt.isAdmin], groups.create);

  // get all groups
  app.get('/api/groups', groups.findAll);

  // get a single group by id
  app.get('/api/groups/:id', groups.findById);

  // update a group by id
  app.put('/api/groups/:id', [authJwt.verifyToken, authJwt.isAdmin], groups.update);

  // delete a group by id
  app.delete('/api/groups/:id', [authJwt.verifyToken, authJwt.isAdmin], groups.delete);

};
