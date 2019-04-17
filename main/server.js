const http = require('http');
const express = require('express');
const app = express();
const path = require('path');
const bodyParser = require('body-parser');

const PORT = 3000;
//nasłuch na określonym porcie

app.use(express.static('static'));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/index.html'));
});

app.get('/gallery', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/gallery.html'));
});

app.get('/conatct', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/contact.html'));
});

app.get('/mentors', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/mentors.html'));
});

// login script after lightbox
app.get('/login', (req, res) => {
  res.sendFile(path.join(__dirname, '#'));
});

// arduino mocno watpliwe czy dziala
app.get('/arduino', (req, res) =>{
   res.sendFile(path.join(__dirname, '#'));
});


app.listen(PORT, () =>  console.log('start serwera na porcie ' + PORT));
