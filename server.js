const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.json({
    message: "Hello World! DevOps is life.",
    timestamp: new Date()
  });
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});