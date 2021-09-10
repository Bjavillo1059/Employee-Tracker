const fs = require('fs');
const express = require('express');
const mysql = require('mysql2');
// const router = ('express').Router();

var app = express();
var PORT = 3001

const db = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: process.env.USER, // syntax established on .env file
      // MySQL password
      password: process.env.PW, // syntax established on .env file
      database: 'tracker_db'
    },
    console.log(`Connected to the tracker_db database.`)
  );



  db.query("SELECT * FROM department", (err, results) => {
      console.log(results);
  });