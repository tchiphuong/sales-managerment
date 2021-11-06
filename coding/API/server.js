const express = require('express');
const app = express();
const bodyParser = require('body-parser');
var cors = require('cors');
require('dotenv').config({path:__dirname+'/./../../.env'});
const port = process.env.PORT || 3000;

app.use(bodyParser.urlencoded({ extended: true}));
app.use(bodyParser.json());
app.use(cors());
//import routes
let routes = require('./api/routes');
routes(app);

app.use(function(req, res) {
    res.status(404).send({ url: req.originalUrl + ' not found'});
});

app.listen(port, () => console.log('RESTful API server started on: ' + port));
