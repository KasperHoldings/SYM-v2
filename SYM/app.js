
var express = require('express');

var app = express();

var port = process.env.PORT || 5000;

var connection = require('./src/config/dbconfig');


var nav = [{
    Link: '/Bike',
    Text: 'Bike'
},{
    Link: '/Three',
    Text:'Three'
}, {
    Link: '/formSampleOne',
    Text: 'Sample Form'
}
//    ,{
//    Link: '/sampleUsers',
//    Text:'Sample User Form'
//}
];

connection.connect();

var insuranceRouter = require('./src/routes/insuranceRouter')(nav);
var sampleForm = require('./src/routes/sampleFormRouter')(nav);

//Database Connection Sample
{


    connection.query('SELECT * From sampleTable', function (err, rows, fields) {
        if (err) throw err;

        console.log('The solution is: ', rows[0]);

    });

    //connection.end();

}


app.use(express.static('public'));
app.set('views','./src/views');
app.set('view engine','ejs');

app.use('/',insuranceRouter);
app.use('/',sampleForm);

app.get('/',function(req,res){
    res.render('index',{
        title:'Home',
        nav : nav
    });

});

app.listen(port,function(err){
    console.log('Running server on port '+port);
});