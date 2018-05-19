"use strict"

var express = require('express');
var app = express();
var path = require('path');


// middleware to define folder for static files

app.use(express.static('public'))

app.get('/', function(res){
	//003 What Redux is and How React-Redux work together

}')