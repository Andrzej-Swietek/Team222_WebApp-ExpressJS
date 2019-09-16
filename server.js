const http = require('http');
const express = require('express');
const app = express();
const path = require('path');
const bodyParser = require('body-parser');
const bcrypt = require('bcrypt');


//nasłuch na określonym porcie
const PORT = process.env.PORT || 8080;


app.use(express.static('main/static'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}))

//includowanie mongusa i bazki
const mongoose = require('mongoose');
const atlasURI =
  'mongodb+srv://andrzej:andrzej_s@cluster0-zner5.mongodb.net/test?retryWrites=true&w=majority';
mongoose.connect(atlasURI, { useNewUrlParser: true });
const db = mongoose.connection;

db.on('error', console.error.bind(console, 'connection error'));
db.once('open', () => {
  console.log('połączono z bazą danych');
});

// SCHEMA DLA KAŻDEJ MONETY
// COIN SCHEMA
const userSchema = new mongoose.Schema({
  login: String,
  pass: String
});

const User = mongoose.model('users', userSchema);


app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'main/static/index.html'));
});

app.get('/gallery', (req, res) => {
  res.sendFile(path.join(__dirname, 'main/static/gallery.html'));
});

app.get('/history', (req, res) => {
  res.sendFile(path.join(__dirname, 'main/static/history.html'));
});

app.get('/contact', (req, res) => {
  res.sendFile(path.join(__dirname, 'main/static/contact.html'));
});

app.get('/mentors', (req, res) => {
  res.sendFile(path.join(__dirname, 'main/static/mentors.html'));
});

// login script after lightbox
app.get('/login', (req, res) => {
  res.sendFile(path.join(__dirname, 'main/static/login.html'));
});

//po bezposrednim requescie logowania
app.post('/signin', (req, res) => {
  const {username, password} = req.body;

  User.findOne({login: username}, (err, user) => {
    if (err) return res.status(400).send(err);
    if (!user) return res.status(400).send('taki użytkownik nie istnieje');

    const {pass} = user;

    bcrypt.compare(password, pass, function(err, compared) {
      // res == true
      console.log(compared);

      res.send(compared ? 'ok' : 'notok');
  });

  })

});

// arduino mocno watpliwe czy dziala
// app.get('/arduino', (req, res) =>{
//    res.sendFile(path.join(__dirname, '#'));
// });


app.listen(PORT, () =>  console.log('start serwera na porcie ' + PORT));
