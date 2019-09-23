const express =
require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Hello Paul!!');
});

app.listen(8088, () => {
  console.log('Listening at 8088');
});
