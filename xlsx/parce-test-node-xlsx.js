var XLSX = require('xlsx');
var md5 = require('md5');
const fs = require('fs');


/*const workSheetsFromFile = XLSX.parse(`${__dirname}/Lec.xls`);
console.log(workSheetsFromFile[0]);*/

//['!merges']
const book =  XLSX.readFile('Lec.xls')
const sheet = book.Sheets['Лист1'];
const ref = sheet['!ref'];

const refEndCol = ref.split(/:/)[1].split(/([0-9]+)/)[0];
const refEndRow = ref.split(/:/)[1].split(/([0-9]+)/)[1];

console.log(refEndCol, refEndRow);


function numberRange (start, end) {
	return new Array(end - start).fill().map((d, i) => i + start);
}
function toLetters(num) {
    "use strict";
    var mod = num % 26,
        pow = num / 26 | 0,
        out = mod ? String.fromCharCode(64 + mod) : (--pow, 'Z');
    return pow ? toLetters(pow) + out : out;
}
function fromLetters(str) {
    "use strict";
    var out = 0, len = str.length, pos = len;
    while (--pos > -1) {
        out += (str.charCodeAt(pos) - 64) * Math.pow(26, len - 1 - pos);
    }
    return out;
}

const simpleUnmergeCol = numberRange(0,3);
const groupUnmergeCol = numberRange(4,6+1);

const merges = sheet['!merges'];
merges.forEach(function(merge) {
	if (simpleUnmergeCol.includes(merge['s']['c'])) {
		numberRange(merge['s']['r'] + 1, merge['e']['r'] + 1)
			.forEach(function (replaceRow) {
				sheet[toLetters(merge['s']['c'] + 1) + (replaceRow + 1)] = 
					sheet[toLetters(merge['s']['c'] + 1) + (merge['s']['r'] + 1)];
			})
	}
	if (groupUnmergeCol.includes(merge['s']['c'])) {
		console.log(merge, md5(JSON.stringify(merge)));
		const hash = md5(JSON.stringify(merge)); //md5(merge);
		numberRange(merge['s']['r'] + 0, merge['e']['r'] + 1)
			.forEach(function (replaceRow) {
				sheet[toLetters(merge['s']['c'] + 1) + (replaceRow + 1)] = 
					{
						'v': hash,
						't': 's',
						'w': hash
					}
		})
	}	
})

sheet['!merges'] = [];
book.Sheets['Лист1'] = sheet;
const content = XLSX.write(book, { type: 'binary', bookType: 'xlsx', bookSST: false });
fs.writeFileSync("test-write.xlsx", content, { encoding: 'binary' });