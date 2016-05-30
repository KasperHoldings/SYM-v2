
var express = require('express');

var app = express();

var port = 5000;

app.use(express.static('public'));
app.use(express.static('src/views'));

app.get('/',function(req,res){
    res.send('Hello World');
});

app.get('/home',function(req,res){
    res.send('Hello Home');
});

app.listen(port,function(err){
    console.log('Running server on port '+port);
});