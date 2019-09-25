const express =
require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Hello There Shreya!! -v2');
});

app.listen(8080, () => {
  console.log('Listening at 8080');
});
