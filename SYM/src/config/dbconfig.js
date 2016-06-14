
var mysql      = require('mysql');
var connector  = require('express-myconnection');

var connection = connector(mysql,{

    host: 'localhost',//host
    user: 'root',//username
    password : '123',//password
    port : 3306, //port mysql
    database:'dbsym'//db name

},'pool'); //or single


module.exports = connection;