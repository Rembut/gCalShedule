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
		},
		facultyId: {
		  type: Sequelize.INTEGER
		}
	}, {
    classMethods: {
      associate: (models) => {
        User.hasMany(models.Schedule);
      }
    }
	});
	
	return User;
}