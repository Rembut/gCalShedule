const fs = require('fs');
const auth = require('./auth');
const readline = require('readline');
const { google } = require('googleapis');

const credentials = 'credentials.json';
const sheetID = '1-SSzl6GCkU77ivvYNF1oqg1K7hWM67sMFmu9-mYcMss';
const sheetRange = 'Data!A1:D';

getStaffFromGS(credentials, sheetID, sheetRange)
    .then((rows) => {
        if (rows.length) {
            // Print columns C and D, which corresponds to indices 2 and 3.
            rows.map((row) => {
                console.log(`${row[2].trim()}, ${row[3]}`);
            });
        } else {
            console.error('No data found in range');
        }
    })
    .catch((err) => {
        console.error(err)
    });


/**
* Auth the application to call GoogleSpreadsheets and get json table representation:
* @param {Object} credentials The authorization client credentials.
* @param sheet GoogleSpreadsheet ID
* @param range sheet range in A1 notation
*/
function getStaffFromGS(credentials, sheet, range) {
    return new Promise((resolve, reject) => {
        fs.readFile(credentials, (err, content) => {
            if (err) {
                reject(err);
            }

            // Authorize a client with credentials, then call the Google Sheets API.
            auth.authorize(JSON.parse(content))
                .then(getSheetData)
                .then((rows) => resolve(rows))
                .catch((err) => console.error(err));
        });
    })
    

    /**
     * Gets the json GoogleSpreadsheets table representation:
     * @param {google.auth.OAuth2} auth The authenticated Google OAuth client.
     */
    function getSheetData(auth) {
        return new Promise((resolve, reject) => {
            const sheets = google.sheets({ version: 'v4', auth });
            sheets.spreadsheets.values.get({
                spreadsheetId: sheet,
                range: range,
            }, (err, res) => {
                if (err) {
                    reject(err);
                } else {
                    // Each row is array of columns values
                    // Access by number notation (A == 0)
                    const rows = res.data.values;
                    resolve(rows);
                }     
            });
        })
    }
}
