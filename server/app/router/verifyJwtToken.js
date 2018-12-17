const jwt = require('jsonwebtoken');
const config = require('../config/config.js');
const db = require('../config/db.config.js');
const Role = db.role;
const User = db.user;

verifyToken = (req, res, next) => {
	let token = req.headers['x-access-token'];
  
	if (!token){
		return res.status(403).send({ 
			auth: false, message: 'no token provided' 
		});
	}

	jwt.verify(token, config.secret, (err, decoded) => {
		if (err){
			return res.status(500).send({ 
					auth: false, 
					message: 'fail to authentication. error ' + err 
				});
		}
		req.userId = decoded.id;
		next();
	});
}

isAdmin = (req, res, next) => {
	let token = req.headers['x-access-token'];
	
	User.findById(req.userId)
		.then(user => {
			user.getRoles().then(roles => {
				console.log(roles)
				for(let i = 0; i < roles.length; i++){
					console.log(roles[i].name);
					if(roles[i].name.toUpperCase() === "ADMIN"){
						next();
						return;
					}
				}
				
				res.status(403).send("require admin role");
				return;
			})
		})
}

const authJwt = {};
authJwt.verifyToken = verifyToken;
authJwt.isAdmin = isAdmin;

module.exports = authJwt;

