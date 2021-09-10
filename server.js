// dependencies to call
const fs = require('fs');
const inq = require('inquirer');
const express = require('express');
require('dotenv').config(); 

// express app setup
var app = express();
var PORT = 3001;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static('public'));

app.listen(PORT, () =>
  console.log(`App server listening on port ${PORT}!`)
);