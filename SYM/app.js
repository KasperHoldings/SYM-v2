
var express = require('express');

var app = express();

var port = process.env.PORT || 5000;

var connection = require('./src/config/dbconfig');

var bodyParser = require('body-parser');

var methodOverride = require('method-override');


var nav = [{
    Link: '/Bike',
    Text: 'Bike'
    }, {
    Link: '/Three',
    Text: 'Three'
    }, {
    Link: '/formSampleOne',
    Text: 'Sample Form'
    }, {
    Link: '/list',
    Text: 'Sample Select Template'
    }
];


//Routers
var insuranceRouter = require('./src/routes/insuranceRouter')(nav);
var sampleForm = require('./src/routes/sampleFormRouter')(nav);
var userRouter = require('./src/routes/userRouter');
var vehicleRegRouter = require('./src/routes/vehicleRegRouter');
var vehicleDetailsRouter = require('./src/routes/vehicleDetailsRouter');

app.use(express.static('public'));
app.set('views', './src/views');
//app.set('views', './src/views/userRegistrations');
app.set('view engine', 'ejs');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded());
app.use(methodOverride('X-HTTP-Method-Override'));



app.use(connection);

//app.use('/', insuranceRouter);
//app.use('/', sampleForm);

app.get('/list', userRouter.list);
app.get('/users/create', userRouter.add);
app.post('/users/create', userRouter.save);
app.get('/users/delete/:id', userRouter.delete);
app.get('/users/edit/:id', userRouter.edit);
app.post('/users/edit/:id',userRouter.saveEdit);

//Vehicle Router - Vehicle Registration
app.get('/vehicle/car/vehicleReg/create', vehicleRegRouter.add);
app.post('/vehicle/car/vehicleReg/create', vehicleRegRouter.save);
app.get('/vehicle/car/vehicleReg/delete/:id', vehicleRegRouter.delete);
app.get('/vehicle/car/vehicleReg/edit/:id', vehicleRegRouter.edit);
app.post('/vehicle/car/vehicleReg/edit/:id',vehicleRegRouter.saveEdit);

//Vehicle Router - Vehicle details
app.get('/vehicle/car/vehicleDetails/create', vehicleDetailsRouter.add);
app.post('/vehicle/car/vehicleDetails/create', vehicleDetailsRouter.save);
app.get('/vehicle/car/vehicleDetails/delete/:id', vehicleDetailsRouter.delete);
app.get('/vehicle/car/vehicleDetails/edit/:id', vehicleDetailsRouter.edit);
app.post('/vehicle/car/vehicleDetails/edit/:id',vehicleDetailsRouter.saveEdit);

//Vehicle Router - Vehicle details


//Index
app.get('/', function (req, res) {
    res.render('index', {
        form:'insuranceInfo',
        nav:nav
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