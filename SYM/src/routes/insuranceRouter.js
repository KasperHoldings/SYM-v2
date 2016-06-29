
var express = require('express');

var insuranceRouter = express.Router();

var router = function(nav){

    insuranceRouter.route('/')
        .get(function (req,res){
            //res.send('formSampleOne');

            res.render('layout/master',{
                title:'Home',
                nav : nav
            });
        });

    insuranceRouter.route('/single')
        .get(function (req,res){
            res.render('login');
            //res.render('Three',{
            //    title:'Hello from render single',
            //    nav : nav
            //});
        });

    insuranceRouter.route('/Bike')
        .get(function (req,res){
            res.render('Bike',{
                title:'Bike',
                nav : nav
            });
        });

    insuranceRouter.route('/formSampleOne')
        .get(function (req,res){
            res.render('formSampleOne',{
                title:'Form One',
                nav : nav
            });
        });

    insuranceRouter.route('/three')
        .get(function (req,res){
            res.render('three',{
                title:'Three',
                nav : nav
            });
        });
    return insuranceRouter;
};

module.exports = router;