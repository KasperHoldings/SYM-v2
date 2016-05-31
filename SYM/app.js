
var express = require('express');

var app = express();

var port = process.env.PORT || 5000;

var mysql      = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '123',
    database : 'dbsym'
});

connection.connect();

connection.query('SELECT * From sampleTable', function(err, rows, fields) {
    if (err) throw err;

    console.log('The solution is: ', rows[0]);


});

connection.end();

var nav = [{
    Link: '/Bike',
    Text: 'Bike'
    },{
    Link: '/Three',
    Text:'Three'
    },{
    Link: '/formSampleOne',
    Text:'Sample Form'
    }
];

var insuranceRouter = require('./src/routes/insuranceRouter')(nav);

app.use(express.static('public'));
app.set('views','./src/views');
app.set('view engine','ejs');


app.use('/',insuranceRouter);

app.get('/',function(req,res){
    res.render('index',{
        title:'Home',
        nav : nav
    });

});

app.listen(port,function(err){
    console.log('Running server on port '+port);
});