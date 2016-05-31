
var express = require('express');

var insuranceRouter = express.Router();

var router = function(nav){

    insuranceRouter.route('/')
        .get(function(req,res){
            res.send('Hello Bike from Router');
        });

    insuranceRouter.route('/single')
        .get(function (req,res){
            //res.send('Hello Insurance single');
            res.render('Three',{
                title:'Hello from render single',
                nav : nav
            });
        });
    return insuranceRouter;
}

module.exports = router;