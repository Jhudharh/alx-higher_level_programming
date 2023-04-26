#!/usr/bin/node
const request = require('request');
const fs = require('fs');

var url = process.argv[2];
var filePath = process.argv[3];

request(url, function (err, response, body) {
  if (err) {
    console.log(err);
  } else {
    fs.writeFile(filePath, body, 'utf-8', function (err) {
      if (err) {
        console.log(err);
      }
    });
  }
});
