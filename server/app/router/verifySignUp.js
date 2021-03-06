const db = require('../config/db.config.js');
const config = require('../config/config.js');
const ROLEs = config.ROLEs; 
const User = db.user;
const Role = db.role;

checkDuplicateUserNameOrEmail = (req, res, next) => {

	User.findOne({
		where: {
			username: req.body.username
		} 
	}).then(user => {
		if(user){
			res.status(400).send("username is already taken");
			return;
		}
		

		User.findOne({ 
			where: {
				email: req.body.email
			} 
		}).then(user => {
			if(user){
				res.status(400).send("email is already in use");
				return;
			}
				
			next();
		});
	});
}

checkRolesExisted = (req, res, next) => {	
	for(let i = 0; i < req.body.roles.length; i++){
		if(!ROLEs.includes(req.body.roles[i].toUpperCase())){
			res.status(400).send("does not exist role = " + req.body.roles[i]);
			return;
		}
	}
	next();
}

const signUpVerify = {};
signUpVerify.checkDuplicateUserNameOrEmail = checkDuplicateUserNameOrEmail;
signUpVerify.checkRolesExisted = checkRolesExisted;

module.exports = signUpVerify;