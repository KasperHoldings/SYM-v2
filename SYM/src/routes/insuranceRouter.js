
var express = require('express');

var insuranceRouter = express.Router();

insuranceRouter.route('/')
    .get(function(req,res){
        res.send('Hello Bike from Router');
    });

insuranceRouter.route('/single')
    .get(function (req,res){
        res.send('Hello Insurance single');
    });

module.exports = insuranceRouter;