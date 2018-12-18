const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Day = db.day;
 
exports.findAll = (req, res) => {
  Day.findAll().then(days => {
    res.send(days);
  });
};