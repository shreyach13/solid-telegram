const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Hello Eddy is here, version 2');
});

app.listen(8080, () => {
  console.log('Listen at 8080');
});
