
var express = require('express');

var app = express();

var port = process.env.PORT || 5000;

var insuranceRouter = express.Router();

app.use(express.static('public'));
app.set('views','./src/views');
app.set('view engine','ejs');

insuranceRouter.route('/')
    .get(function(req,res){
        res.send('Hello Bike from Router');
    });

insuranceRouter.route('/single')
    .get(function (req,res){
    res.send('Hello Insurance single');
});


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

//app.get('/Bike',function(req,res){
//    res.send('Hello Bike Insurance.')
//});

//app.get('/home',function(req,res){
//    res.send('Hello Home');
//});

//app.get('/',function(req,res){
//    res.send('Hello World');
//});

app.listen(port,function(err){
    console.log('Running server on port '+port);
});