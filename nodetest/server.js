'use strict';

const express = require('express');

// Constants
const PORT = 8000;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Prova Node App su Docker');
});

app.listen(PORT, HOST);
console.log("App in esecuzione")
