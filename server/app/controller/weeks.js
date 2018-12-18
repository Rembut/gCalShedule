const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Week = db.week;
 
exports.findAll = (req, res) => {
 Week.findAll().then(weeks => {
    res.send(weeks);
  });
};