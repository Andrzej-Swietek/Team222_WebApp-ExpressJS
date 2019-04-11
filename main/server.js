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

app.listen(PORT, () =>  console.log('start serwera na porcie ' + PORT));
