const GSheet = require('./GSheet.js');

const credentials = 'credentials.json';
const sheetID = '1-SSzl6GCkU77ivvYNF1oqg1K7hWM67sMFmu9-mYcMss';
const sheetRange = 'Data!A1:D';

GSheet.getStaffFromGS(credentials, sheetID, sheetRange)
    .then((rows) => {
        if (rows.length) {
            // Print columns C and D, which corresponds to indices 2 and 3.
            rows.map((row) => {
                // Put here your data handler
                console.log(`${row[2].trim()}, ${row[3]}`);
            });
        } else {
            // Empty Range
            console.error('No data found in range');
        }
    })
    .catch((err) => {
        console.error(err)
    });