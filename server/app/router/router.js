const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');

module.exports = function(app) {

  const admin = require('../controller/admin.js');

  const user = require('../controller/user.js');

  const auth = require('../controller/auth.js');

  const departments = require('../controller/departments.js');

  const faculties = require('../controller/faculties.js');

  const schedules = require('../controller/schedules.js');

  const courses = require('../controller/courses.js');

  const days = require('../controller/days.js');

  const lessonNumbers = require('../controller/lessonNumbers.js');

  const levels = require('../controller/levels.js');

  const posts = require('../controller/posts.js');

  const subjectTypes = require('../controller/subjectTypes.js');

  const weeks = require('../controller/weeks.js');
 
  // sign in 
	app.post('/api/auth/signup', [authJwt.verifyToken, authJwt.isAdmin, verifySignUp.checkDuplicateUserNameOrEmail, verifySignUp.checkRolesExisted], auth.signup);
	
  // sign up
	app.post('/api/auth/signin', auth.signin);
	
  // user data
	app.get('/api/user', [authJwt.verifyToken], user.userContent);
	
  // admin data
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


  // get all courses 
  app.get('/api/courses', courses.findAll);

  // get all days
  app.get('/api/days', days.findAll);

  // get all lesson numbers
  app.get('/api/lessonNumbers', lessonNumbers.findAll);

  // get all levels
  app.get('/api/levels', levels.findAll);

  // get all posts
  app.get('/api/posts', posts.findAll);

  // get all subject types
  app.get('/api/subjectTypes', subjectTypes.findAll);  

  // get all weeks
  app.get('/api/weeks', weeks.findAll);  
}








