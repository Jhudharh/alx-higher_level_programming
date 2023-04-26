#!/usr/bin/node

const fs = require('fs');
const file = process.argv[2];

fs.readFile(process.argv[2], 'utf8', (error, content) => {
  console.log(error || content);
});
