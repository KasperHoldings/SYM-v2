
/*
 * GET users listing.
 */


module.exports = function(router){

    //localhost:3000/auth
    router.get('/', function(req, res){

        res.render('forms',{
            form:'personalDetails',
            hidden: req.session.id
        });

    });


    router.post('/', function(req, res){

        var input = JSON.parse(JSON.stringify(req.body));

        req.getConnection(function (err, connector) {

            var data = {

                title    : input.title,
                first_name : input.first_name,
                last_name: input.last_name,
                email   : input.email,
                mobile  : input.mobile,
                nic   : input.nic

            };

            var query = connector.query('UPDATE insurance_quotation set ? WHERE insurance_quotation_id = ? ', [data, input.insurance_quotation], function (err, rows) {

                if (err) {
                    console.log('Error Selecting : %s ', err);
                }
                res.redirect('/insuranceDetails');

            });

            // console.log(query.sql); get raw query

        });

    });



}


exports.list = function(req, res){

    req.getConnection(function(err,connection){

        var listQuery = connection.query('SELECT * FROM user',function(err,rows)
        {

            if(err) {
                console.log('Error Selecting : %s ', err);
            }
            res.render('listUsers',{pageTitle:'SELECT Template',data:rows});


        });

        //console.log(query.sql);
    });

};

exports.add = function(req, res){
    res.render('forms',{
        form:'personalDetails',
        hidden: req.session.id
    });
};

exports.edit = function(req, res){

    var id = req.params.id;

    req.getConnection(function(err,connector){

        var query = connector.query('SELECT * FROM user WHERE id = ?',[id],function(err,rows)
        {

            if(err) {
                console.log('Error Selecting : %s ', err);
            }

            //console.log(rows[0]);
            res.render('userregistrations/edit',{pageTitle:'Edit Customers - Node.js',data:rows[0],id:id});


        });

        //console.log(query.sql);
    });
};

/*Save the customer*/

exports.save = function(req,res){

    var input = JSON.parse(JSON.stringify(req.body));

    req.getConnection(function (err, connector) {

        var data = {

            title    : input.title,
            first_name : input.first_name,
            last_name: input.last_name,
            email   : input.email,
            mobile  : input.mobile,
            nic   : input.nic

        };

        var query = connector.query('UPDATE insurance_quotation set ? WHERE insurance_quotation_id = ? ', [data, input.insurance_quotation], function (err, rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            res.redirect('/vehicle/car/insuranceDetails/create');

        });

        // console.log(query.sql); get raw query

    });
};

exports.saveEdit = function(req,res){

    var input = JSON.parse(JSON.stringify(req.body));
    var id = req.params.id;

    req.getConnection(function (err, connector) {

        var data = {

            name    : input.name,
            address : input.address,
            email   : input.email,
            phone   : input.phone

        };

        connector.query('UPDATE user set ? WHERE id = ? ',[data,id], function(err, rows)
        {

            if(err) {
                console.log('Error Selecting : %s ', err);
            }
            res.redirect('/list');

        });

    });
};


exports.delete = function(req,res){

    var id = req.params.id;

    req.getConnection(function (err, connector) {

        connector.query('DELETE FROM user  WHERE id = ? ',[id], function(err, rows)
        {

            if(err) {
                console.log('Error Selecting : %s ', err);
            }
            res.redirect('/list');

        });

    });
};


