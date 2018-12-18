const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Course = db.course;
 
exports.findAll = (req, res) => {
  Course.findAll().then(courses => {
    res.send(courses);
  });
};