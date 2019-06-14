const http = require('http');
const express = require('express');
const app = express();
const path = require('path');
const bodyParser = require('body-parser');
const bcrypt = require('bcrypt');
let currentHash = null;

const PORT = process.env.PORT || 8080;
//nasłuch na określonym porcie


app.use(express.static('static'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}))


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

app.post('/signin', (req, res) => {
  const {username, password} = req.body;

  bcrypt.hash(password, 5, function(err, hash) {
    if (err) return console.error(err);

    console.log(hash);
    currentHash = hash;

    bcrypt.compare(password, currentHash, function(err, res) {
      // res == true
      console.log(res);
  });
    // Store hash in your password DB.
  });

  

  res.send('ok');
});

// arduino mocno watpliwe czy dziala
// app.get('/arduino', (req, res) =>{
//    res.sendFile(path.join(__dirname, '#'));
// });


app.listen(PORT, () =>  console.log('start serwera na porcie ' + PORT));
