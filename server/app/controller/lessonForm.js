const db = require('../config/db.config.js');
const config = require('../config/config.js');
const LessonForm = db.lessonForm;
 
exports.findAll = (req, res) => {
 LessonForm.findAll().then(lessonForms => {
    res.send(lessonForms);
  });
};