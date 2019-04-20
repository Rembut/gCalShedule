const db = require('../config/db.config.js');

const Role = db.role;

const Post = db.post;

const LessonForm = db.lessonForm;

const Week = db.week;

const Day = db.day;

const LessonNumber = db.lessonNumber;

exports.initial = () => {
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

  // LessonForm
  LessonForm.create({
    name: "лекція",
    shortName: "л" 
  });

  LessonForm.create({
    name: "семінар",
    shortName: "сем" 
  });

  LessonForm.create({
    name: "практичне заняття",
    shortName: "пр" 
  });

  LessonForm.create({
    name: "лабораторна робота",
    shortName: "лаб" 
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

  // Week 
  Week.create({
    number: 1,
    letter: "а"
  });

  Week.create({
    number: 2,
    letter: "б"
  });
}
