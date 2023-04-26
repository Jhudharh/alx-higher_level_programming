#!/usr/bin/node
const req = require('request');
const id = process.argv[2];
const url = 'https://swapi-api.hbtn.io/api/films/';

req.get(url + id, (error, res, body) => {
  if (error) {
    console.log(error);
    return;
  }
  
  const data = JSON.parse(body);
  const characters = data.characters;

  for (const character of characters) {
    req.get(character, (error, res, body) => {
      if (error) {
        console.log(error);
        return;
      }

      const characterData = JSON.parse(body);
      console.log(characterData.name);
    });
  }
});

