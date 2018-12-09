const fs = require('fs');
const readline = require('readline');
const {google} = require('googleapis');

// If modifying these scopes, delete token.json.
const SCOPES = ['https://www.googleapis.com/auth/calendar'];
const TOKEN_PATH = 'token.json';

// Load client secrets from a local file.
fs.readFile('credentials_fcsfm.json', (err, content) => {
  if (err) return console.log('Error loading client secret file:', err);
  // Authorize a client with credentials, then call the Google Calendar API.
  //authorize(JSON.parse(content), listEvents);
  //authorize(JSON.parse(content), createEvent);
  authorize(JSON.parse(content), createCalendar);
  //authorize(JSON.parse(content), getCalendars);
  //authorize(JSON.parse(content), deleteCalendar);
  //authorize(JSON.parse(content), purgeTestCalendars);
});

/**
 * Create an OAuth2 client with the given credentials, and then execute the
 * given callback function.
 * @param {Object} credentials The authorization client credentials.
 * @param {function} callback The callback to call with the authorized client.
 */
function authorize(credentials, callback) {
  const {client_secret, client_id, redirect_uris} = credentials.installed;
  const oAuth2Client = new google.auth.OAuth2(
      client_id, client_secret, redirect_uris[0]);

  // Check if we have previously stored a token.
  fs.readFile(TOKEN_PATH, (err, token) => {
    if (err) return getAccessToken(oAuth2Client, callback);
    oAuth2Client.setCredentials(JSON.parse(token));
    callback(oAuth2Client);
  });
}

/**
 * Get and store new token after prompting for user authorization, and then
 * execute the given callback with the authorized OAuth2 client.
 * @param {google.auth.OAuth2} oAuth2Client The OAuth2 client to get token for.
 * @param {getEventsCallback} callback The callback for the authorized client.
 */
function getAccessToken(oAuth2Client, callback) {
  const authUrl = oAuth2Client.generateAuthUrl({
    access_type: 'offline',
    scope: SCOPES,
  });
  console.log('Authorize this app by visiting this url:', authUrl);
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });
  rl.question('Enter the code from that page here: ', (code) => {
    rl.close();
    oAuth2Client.getToken(code, (err, token) => {
      if (err) return console.error('Error retrieving access token', err);
      oAuth2Client.setCredentials(token);
      // Store the token to disk for later program executions
      fs.writeFile(TOKEN_PATH, JSON.stringify(token), (err) => {
        if (err) console.error(err);
        console.log('Token stored to', TOKEN_PATH);
      });
      callback(oAuth2Client);
    });
  });
}

/**
 * Lists the next 10 events on the user's primary calendar.
 * @param {google.auth.OAuth2} auth An authorized OAuth2 client.
 */
function listEvents(auth) {
  const calendar = google.calendar({version: 'v3', auth});
  calendar.events.list({
    //calendarId: 'primary',
    calendarId: /*''*/,
    timeMin: (new Date()).toISOString(),
    maxResults: 25,
    singleEvents: true,
    orderBy: 'startTime',
  }, (err, res) => {
    if (err) return console.log('The API returned an error: ' + err);
    const events = res.data.items;
    if (events.length) {
      console.log('Upcoming 10 events:');
      events.map((event, i) => {
        const start = event.start.dateTime || event.start.date;
        console.log(`${start} - ${event.summary}`);
      });
    } else {
      console.log('No upcoming events found.');
    }
  });
}

// Refer to the Node.js quickstart on how to setup the environment:
// https://developers.google.com/calendar/quickstart/node
// Change the scope to 'https://www.googleapis.com/auth/calendar' and delete any
// stored credentials.

var event = {
  'summary': 'Google I/O 2018',
  'start': {
    'dateTime': '2018-09-24T12:00:00+03:00',
  },
  'end': {
    'dateTime': '2018-09-24T13:00:00+03:00',
  },
};


function createEvent(auth) {
  const calendar = google.calendar({version: 'v3', auth});
  //console.log(calendar.events.insert);
  calendar.events.insert({
  auth: auth,
  //calendarId: 'primary',
  calendarId: '2ifti1hj3k47lc4hvohv40dnbc@group.calendar.google.com',
  resource: event,
}, function(err, event) {
  if (err) {
    console.log('There was an error contacting the Calendar service: ' + err);
    return;
  }
  console.log('Event created: %s', event);
});
}


function createCalendar(auth) {
  const calendar = google.calendar({version: 'v3', auth});
  //console.log(calendar.calendars.insert);
  calendar.calendars.insert({
  auth: auth,
  resource: {"summary": "TEST4","timeZone": "Europe/Kiev"}
}, function(err, res) {
  if (err) {
    console.log('There was an error contacting the Calendar service: ' + err);
    return;
  }
  console.log('calendar created: %s',res.data);
  fs.writeFile('Object.json', JSON.stringify(res.data), (err) => {
        if (err) console.error(err);
        console.log('Token stored to', 'Object.json');
      });
});
}

function deleteCalendar(auth) {
  const calendar = google.calendar({version: 'v3', auth});
  //console.log(calendar.calendars.insert);
  calendar.calendars.delete({calendarId: /*""*/});
}

function purgeTestCalendars(auth) {
  const calendar = google.calendar({version: 'v3', auth});
  calendar.calendarList.list({
  }, (err, res) => {
    res.data.items.forEach(element => {
      if (element.summary.indexOf("TEST") !== -1){
        console.log("DELETING", element.summary, element.id)
        calendar.calendars.delete({calendarId: element.id});
      }
    })
  })
}


function getCalendars(auth) {
  const calendar = google.calendar({version: 'v3', auth});
  calendar.calendarList.list({
  }, (err, res) => {
    if (err) return console.log('The API returned an error: ' + err);
    if (res.data.items.length) {
      //console.log(res.data.items)
      fs.writeFile('CalendarsList.json', JSON.stringify(res.data), (err) => {
        if (err) console.error(err);
        console.log('Token stored to', 'Object.json');
      });
    } else {
      console.log('No calendars found.');
    }
  });
}