#!/bin/bash

DOMAIN=$1

node_auto() {

#initial dependencies
sudo npm init -y
sudo npm install express nodemon mongoose dotenv body-parser cors 

#create some default folders
sudo mkdir models controllers routes

#create app.js .env
sudo touch app.js 
sudo touch .env

#add some stupid code in app.js
#code for app.js 
##
echo "
const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const cors = require('cors');
require('dotenv/config');

const app = express();

//Middlewares
app.use(cors());
app.use(bodyParser.json());

//Routes import
app.get('/', (req, res) => {
    res.send('We are on home!!');
});

//DB connection
mongoose.connect(process.env.DB_NEWCONNECT, () => {
    console.log('Connected to DB');
});

app.listen(3000);" > app.js
##


#configure MVC and make it interactable
#MVC


}
node_auto
