const express = require("express");

const app = express();

app.get("/", (req, res) => {
  console.log('')
  res.send("Hi Docker!!!");
});

app.listen(3000, () => {
  console.log('server running');
});