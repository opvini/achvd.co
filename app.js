const express      = require('express');
const app          = express();
const cookieParser = require('cookie-parser');
const path         = require('path');

// use secrets
require('dotenv').config();

// listens port 8055
const port = 8055;

app.listen(port, () => {
  console.log(`Achvd.co: listening on port ${port}`)
});
