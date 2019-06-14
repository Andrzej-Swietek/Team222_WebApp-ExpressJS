const http = require('http');
const express = require('express');
const app = express();
const path = require('path');
const bodyParser = require('body-parser');

const PORT = process.env.PORT || 3000;
//nasłuch na określonym porcie


app.use(express.static('static'));
app.use(bodyParser.json());


app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/index.html'));
});

app.get('/gallery', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/gallery.html'));
});

app.get('/history', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/history.html'));
});

app.get('/contact', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/contact.html'));
});

app.get('/mentors', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/mentors.html'));
});

// login script after lightbox
app.get('/login', (req, res) => {
  res.sendFile(path.join(__dirname, 'static/login.html'));
});

// arduino mocno watpliwe czy dziala
// app.get('/arduino', (req, res) =>{
//    res.sendFile(path.join(__dirname, '#'));
// });


app.listen(PORT, () =>  console.log('start serwera na porcie ' + PORT));
