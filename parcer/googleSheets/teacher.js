const fs = require('fs');
const auth = require('./auth');
const readline = require('readline');
const { google } = require('googleapis');


const GoogleSheetID = '1-SSzl6GCkU77ivvYNF1oqg1K7hWM67sMFmu9-mYcMss';
const SheetRange = 'Data!A1:D';

getStaffFromGS(GoogleSheetID, SheetRange);


/**
     * Auth the application to call GoogleSpreadsheets and get json table representation:
     * @param sheet GoogleSpreadsheet ID
     * @param range sheet range in A1 notation
     */
function getStaffFromGS(sheet, range) {
    fs.readFile('credentials.json', (err, content) => {
        if (err) return console.log('Error loading client secret file:', err);
        // Authorize a client with credentials, then call the Google Sheets API.

        auth.authorize(JSON.parse(content), getSheetData);
    });

    /**
     * Gets the json GoogleSpreadsheets table representation:
     * @param {google.auth.OAuth2} auth The authenticated Google OAuth client.
     */
    function getSheetData(auth) {
        const sheets = google.sheets({ version: 'v4', auth });
        sheets.spreadsheets.values.get({
            spreadsheetId: sheet,
            range: range,
        }, (err, res) => {
            if (err) return console.log('The API returned an error: ' + err);
            // Each row is array of columns values
            // Access by number notation (A == 0)
            const rows = res.data.values;
            // TODO: must return 'rows' instead console.log

            if (rows.length) {
                // Print columns C and D, which corresponds to indices 2 and 3.
                rows.map((row) => {
                    console.log(`${row[2].trim()}, ${row[3]}`);
                });
            } else {
                console.log('No data found.');
            }
        });
    }

}
