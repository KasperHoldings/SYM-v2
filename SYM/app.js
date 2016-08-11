
var express = require('express');

var app = express();

var port = process.env.PORT || 5000;

var connection = require('./src/config/dbconfig');

var bodyParser = require('body-parser');

var methodOverride = require('method-override');

var session = require('express-session');

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

var Promise = require('bluebird');

//Routers
var insuranceRouter = require('./src/routes/insuranceRouter')(nav);
var sampleForm = require('./src/routes/sampleFormRouter')(nav);
var userRouter = require('./src/routes/userRouter');
var vehicleRegRouter = require('./src/routes/vehicleRegRouter');
var vehicleDetailsRouter = require('./src/routes/vehicleDetailsRouter');
var personalDetailsRouter = require('./src/routes/personalDetailsRouter');
var insuranceDetailsRouter = require('./src/routes/insuranceDetailsRouter');
var insuranceQuotationRouter = require('./src/routes/insuranceQuotationRouter');
var testRouter = require('./src/routes/testRouter');
var singleTripRouter = require('./src/routes/singleTripRouter');
var singleTripDetailsRouter = require('./src/routes/singleTripDetailsRouter');
var singleTripPersonalInfoRouter = require('./src/routes/singleTripPersonalInfoRouter');

app.use(express.static('public'));
app.set('views', './src/views');
//app.set('views', './src/views/userRegistrations');
app.set('view engine', 'ejs');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded());

app.use(methodOverride('X-HTTP-Method-Override'));
app.use(session({secret: 'session'}));

app.use(connection);

//app.use('/', insuranceRouter);
//app.use('/', sampleForm);

app.get('/test', testRouter.get);

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
app.post('/vehicle/car/vehicleDetails/getVehicleModel',vehicleDetailsRouter.getVehicleModel);


//Vehicle Router - Personal Details
app.get('/vehicle/car/personalDetails/create', personalDetailsRouter.add);
app.post('/vehicle/car/personalDetails/create', personalDetailsRouter.save);
app.get('/vehicle/car/personalDetails/delete/:id', personalDetailsRouter.delete);
app.get('/vehicle/car/personalDetails/edit/:id', personalDetailsRouter.edit);
app.post('/vehicle/car/personalDetails/edit/:id',personalDetailsRouter.saveEdit);

//Vehicle Router - Insurance Details
app.get('/vehicle/car/insuranceDetails/create', insuranceDetailsRouter.add);
app.post('/vehicle/car/insuranceDetails/create', insuranceDetailsRouter.save);
app.get('/vehicle/car/insuranceDetails/delete/:id', insuranceDetailsRouter.delete);
app.get('/vehicle/car/insuranceDetails/edit/:id', insuranceDetailsRouter.edit);
app.post('/vehicle/car/insuranceDetails/edit/:id',insuranceDetailsRouter.saveEdit);

//Vehicle Router - Quotation
app.get('/vehicle/car/insurance/quotation', insuranceQuotationRouter.get);
//app.post('/vehicle/car/insurance/quotation/create', insuranceQuotationRouter.save);






/**
 * Trip Start
 */

//Travel Single
app.get('strip/single/tripDetails', singleTripRouter.get);

app.get('travel/single/travelInfo', singleTripDetailsRouter.get);
app.get('travel/single/personalInfo', singleTripPersonalRouter.get);


/**
 * Trip End
 */

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