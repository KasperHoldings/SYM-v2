var express = require('express');

var app = express();

var port = process.env.PORT || 5000;

var connection = require('express-myconnection');
var mysql = require('mysql');


var nav = [{
    Link: '/Bike',
    Text: 'Bike'
}, {
    Link: '/Three',
    Text: 'Three'
}, {
    Link: '/formSampleOne',
    Text: 'Sample Form'
}
    , {
        Link: '/list',
        Text: 'Sample Select Template'
    }
];

var insuranceRouter = require('./src/routes/insuranceRouter')(nav);
var sampleForm = require('./src/routes/sampleFormRouter')(nav);
var userRouter = require('./src/routes/userRouter');

app.use(express.static('public'));
app.set('views', './src/views');
app.set('view engine', 'ejs');


app.use(
    connection(mysql, {

        host: 'localhost',
        user: 'root',
        password: '1234',
        port: 3306, //port mysql
        database: 'dbsym'

    }, 'pool') //or single

);

app.use('/', insuranceRouter);
app.use('/', sampleForm);

app.get('/list', userRouter.list);
app.get('/', function (req, res) {
    res.render('index', {
        title: 'Home',
        nav: nav
    });

});

app.get('/userRegistration', function (req, res) {
    res.render('userRegistration', {
        title: 'Home',
        nav: nav
    });
});

app.listen(port, function (err) {
    console.log('Running server on port ' + port);
});