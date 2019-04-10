const http = require('http');
const express = require('express');
const app = express();
const PORT = 3000;
//nasłuch na określonym porcie

app.use(express.static('static'));

app.listen(PORT, () =>  console.log('start serwera na porcie ' + PORT));
