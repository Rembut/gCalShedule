const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

module.exports = function(app) {

  const admin = require('../controller/admin.js');

  const user = require('../controller/user.js');

  const auth = require('../controller/auth.js');

  const departments = require('../controller/departments.js');

  const faculties = require('../controller/faculties.js');

  const schedules = require('../controller/schedules.js');
 
	app.post('/api/auth/signup', [authJwt.verifyToken, authJwt.isAdmin, verifySignUp.checkDuplicateUserNameOrEmail, verifySignUp.checkRolesExisted], auth.signup);
	
	app.post('/api/auth/signin', auth.signin);
	
	app.get('/api/user', [authJwt.verifyToken], user.userContent);
	
	app.get('/api/admin', [authJwt.verifyToken, authJwt.isAdmin], admin.adminBoard);


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


  // get a single schedule by id
  //app.get('/api/schedules/:id', schedules.findById);
}