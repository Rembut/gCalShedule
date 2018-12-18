const db = require('../config/db.config.js');
const config = require('../config/config.js');
const LessonNumber = db.lessonNumber;
 
exports.findAll = (req, res) => {
 LessonNumber.findAll().then(lessonNumbers => {
    res.send(lessonNumbers);
  });
};