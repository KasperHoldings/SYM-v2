
var express = require('express');

var app = express();

var port = process.env.PORT || 5000;

var connection = require('./src/config/dbconfig');

var bodyParser = require('body-parser');

var methodOverride = require('method-override');

var session = require('express-session');

var path=require('path');

var engine = require('ejs-locals');


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


app.use('/static',express.static(path.resolve(__dirname,'public')));
app.set('views', './src/views');

app.engine('ejs', engine);
app.set('view engine', 'ejs');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded());

app.use(methodOverride('X-HTTP-Method-Override'));
app.use(session({secret: 'session'}));

app.use(connection);





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


/** Vehicle **/

var vehicleRegRouter=express.Router();
require('./src/routes/vehicleRegRouter.js')(vehicleRegRouter);
app.use('/vehicleReg',vehicleRegRouter);

var vehicleDetailsRouter=express.Router();
require('./src/routes/vehicleDetailsRouter.js')(vehicleDetailsRouter);
app.use('/vehicleDetails',vehicleDetailsRouter);

var personalDetailsRouter=express.Router();
require('./src/routes/personalDetailsRouter.js')(personalDetailsRouter);
app.use('/personalDetails',personalDetailsRouter);

var insuranceDetailsRouter=express.Router();
require('./src/routes/insuranceDetailsRouter.js')(insuranceDetailsRouter);
app.use('/insuranceDetails',insuranceDetailsRouter);

var insuranceQuotationRouter=express.Router();
require('./src/routes/insuranceQuotationRouter.js')(insuranceQuotationRouter);
app.use('/insuranceQuotation',insuranceQuotationRouter);

var shippingDetailsRouter=express.Router();
require('./src/routes/shippingDetailsRouter.js')(shippingDetailsRouter);
app.use('/shippingDetails',shippingDetailsRouter);

var furtherVehicleDetailsRouter=express.Router();
require('./src/routes/furtherVehicleDetailsRouter.js')(furtherVehicleDetailsRouter);
app.use('/furtherVehicleDetails',furtherVehicleDetailsRouter);



/** Travel **/

var singleTravelRouter=express.Router();
require('./src/routes/singleTripRouter.js')(singleTravelRouter);
app.use('/singleTravel',singleTravelRouter);

var groupTravelRouter=express.Router();
require('./src/routes/groupTripRouter.js')(groupTravelRouter);
app.use('/groupTravel',groupTravelRouter);

var tripInfoRouter=express.Router();
require('./src/routes/tripInfoRouter.js')(tripInfoRouter);
app.use('/tripInfo',tripInfoRouter);

var tripPersonalDetailsRlouter=express.Router();
require('./src/routes/singleTripPersonalInfoRouter.js')(tripPersonalDetailsRlouter);
app.use('/singleTripPersonalInfo',tripPersonalDetailsRlouter);


app.listen(port, function (err) {
    console.log('Running server on port ' + port);
});