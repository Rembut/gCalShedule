var express = require('express');
var app = express();
var bodyParser = require('body-parser');
app.use(bodyParser.json())
 
require('./app/router/router.js')(app);

const db = require('./app/config/db.config.js');

const Role = db.role;

const Post = db.post;

const SubjectType = db.subjectType;

const Course = db.course;

const Level = db.level;

const Week = db.week;

const Day = db.day;

const LessonNumber = db.lessonNumber;

/*db.sequelize.sync({force: true}).then(() => {
  console.log('DROP DB { force: true }');
  initial();
});*/

db.sequelize.sync().then(() => {
  console.log('YEP');
  //initial();
});
 
var server = app.listen(3000, function () {
 
  var host = server.address().address
  var port = server.address().port
 
  console.log("App listening at http://%s:%s", host, port)
})

function initial(){
  // Role
	Role.create({
		id: 1,
		name: "USER"
	});
	
	Role.create({
		id: 2,
		name: "ADMIN"
	});

  // Post
  Post.create({
    name: "асистент",
    shortName: "ас" 
  });

  Post.create({
    name: "викладач",
    shortName: "викл" 
  });

  Post.create({
    name: "старший викладач",
    shortName: "ст викл" 
  });

  Post.create({
    name: "доцент",
    shortName: "доц" 
  });

  Post.create({
    name: "професор",
    shortName: "проф" 
  });

  // SubjectType
  SubjectType.create({
    name: "лекція",
    shortName: "л" 
  });

  SubjectType.create({
    name: "семінар",
    shortName: "сем" 
  });

  SubjectType.create({
    name: "практичне заняття",
    shortName: "пр" 
  });

  SubjectType.create({
    name: "лабораторна робота",
    shortName: "лаб" 
  });

  // Course
  Course.create({
    name: "1"
  });

  Course.create({
    name: "2"
  });

  Course.create({
    name: "3" 
  });

  Course.create({
    name: "4"
  });

  // Level
  Level.create({
    name: "бакалавр"
  });

  Level.create({
    name: "магістр"
  });

  // Day
  Day.create({
    name: "понеділок",
    shortName: "пн"
  });

  Day.create({
    name: "вівторок",
    shortName: "вт"
  });

  Day.create({
    name: "середа",
    shortName: "ср"
  });

  Day.create({
    name: "четверг",
    shortName: "чт"
  });

  Day.create({
    name: "п'ятниця",
    shortName: "пт"
  });

  Day.create({
    name: "субота",
    shortName: "сб"
  });

  Day.create({
    name: "неділя",
    shortName: "нд"
  });

  // LessonNumber
  LessonNumber.create({
    number: 1,
    timeBegin: "08:00:00",
    timeEnd: "09:50:00"
  });

  LessonNumber.create({
    number: 2,
    timeBegin: "10:10:00",
    timeEnd: "10:50:00"
  });

  LessonNumber.create({
    number: 3,
    timeBegin: "11:50:00",
    timeEnd: "13:10:00"
  });

  LessonNumber.create({
    number: 4,
    timeBegin: "13:40:00",
    timeEnd: "15:00:00"
  });

  LessonNumber.create({
    number: 5,
    timeBegin: "15:10:00",
    timeEnd: "16:30:00"
  });

  LessonNumber.create({
    number: 6,
    timeBegin: "16:40:00",
    timeEnd: "18:00:00"
  });

  // Week !!!
}














