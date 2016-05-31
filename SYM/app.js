
var express = require('express');

var app = express();

var port = process.env.PORT || 5000;

var insuranceRouter = require('./src/routes/insuranceRouter');

app.use(express.static('public'));
app.set('views','./src/views');
app.set('view engine','ejs');

app.get('/Three',function(req,res){
    res.render('Three');
});

app.get('/Bike',function(req,res){
    res.render('Bike');
});

app.use('/Bike',insuranceRouter);

app.get('/',function(req,res){
    res.render('index',{
        title:'Hello from render',
        nav : [{
            Link: '/Bike',
            Text: 'Bike'
        },{
            Link: '/Three',
            Text:'Three'}]
    });

});

app.listen(port,function(err){
    console.log('Running server on port '+port);
});