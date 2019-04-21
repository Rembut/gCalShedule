module.exports = (sequelize, Sequelize) => {
	const User = sequelize.define('users', {
	  name: {
		  type: Sequelize.STRING
	  },
	  surname: {
		  type: Sequelize.STRING
	  },
	  username: {
		  type: Sequelize.STRING
	  },
	  patronym: {
		  type: Sequelize.STRING
	  },
	  email: {
		  type: Sequelize.STRING
	  },
	  password: {
		  type: Sequelize.STRING
		}},
    {
      paranoid: true,
      timestamps: true,
      underscored: true
  });
	
	return User;
}