const express =
require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('<h1>Hello Paul!! - Eg1Env</h1>');
});

app.listen(8088, () => {
  console.log('Listening at 8088');
});
