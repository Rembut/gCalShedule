const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Level = db.level;
 
exports.findAll = (req, res) => {
 Level.findAll().then(levels => {
    res.send(levels);
  });
};