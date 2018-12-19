var express = require('express');
var app = express();
var bodyParser = require('body-parser');
app.use(bodyParser.json())
 
require('./app/router/router.js')(app);

require('./app/router/departments.js')(app);
require('./app/router/faculties.js')(app);

require('./app/router/groups.js')(app);
require('./app/router/subgroups.js')(app);

require('./app/router/teachers.js')(app);
require('./app/router/disciplines.js')(app);
require('./app/router/specialities.js')(app);
require('./app/router/specializations.js')(app);
require('./app/router/audiences.js')(app);


const db = require('./app/config/db.config.js');

const utils = require('./app/utils/index.js');

db.sequelize.sync({force: true}).then(() => {
  console.log('DROP DB { force: true }');
  utils.initial();
});

/*db.sequelize.sync().then(() => {
  console.log('YEP');
  //utils.initial();
});*/
 
var server = app.listen(3000, function () {
 
  var host = server.address().address
  var port = server.address().port
 
  console.log("App listening at http://%s:%s", host, port)
})













