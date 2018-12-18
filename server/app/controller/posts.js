const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Post = db.post;
 
exports.findAll = (req, res) => {
 Post.findAll().then(posts => {
    res.send(posts);
  });
};