var express = require('express');
var path = require('path');
var app = express();
port = 8001;
app.use("/", express.static(path.join(__dirname, './static')));
console.log("app listenting on port "+port)
app.listen(port);
