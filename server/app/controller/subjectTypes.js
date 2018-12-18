const db = require('../config/db.config.js');
const config = require('../config/config.js');
const SubjectType = db.subjectType;
 
exports.findAll = (req, res) => {
 SubjectType.findAll().then(subjectTypes => {
    res.send(subjectTypes);
  });
};