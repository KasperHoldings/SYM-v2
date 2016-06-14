
var express = require('express');

var sampleFormRouter = express.Router();

var router = function(nav){



    sampleFormRouter.route('/sampleUsers')
        .get(function (req,res){

            req.getConnection(function(err,connection){

                var query = connection.query('SELECT * FROM sampleTable',function(err,rows) {

                    if (err) {
                        console.log('Error Selecting : %s ', err);
                     }

                    //res.render('customers',{page_title:"Customers - Node.js",data:rows});

                    res.render('sampleUsers',{
                        title:'Sample User Form',
                        nav : nav ,
                        data:rows
                    });
                    console.log('Logging date for :'+rows);

                });

                //console.log(query.sql);
            });


        });


    return sampleFormRouter;
};

module.exports = router;