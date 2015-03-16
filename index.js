"use strict";

var skus, findDuplicates, duplicates;

skus = require('./lib/data.js');
findDuplicates = require('./lib/find-duplicates.js');

duplicates = findDuplicates(skus);

console.log( "----------------------------------------" );
console.log( "Duplicates found:" );
console.log( JSON.stringify(duplicates, null, 2) );
console.log( "Duplicates count: " + duplicates.length )


