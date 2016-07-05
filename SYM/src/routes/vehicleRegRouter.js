/*
 * GET users listing.
 */

exports.list = function (req, res) {

    res.render('layout/forms/cars/form1');

    req.getConnection(function (err, connection) {

        var listQuery = connection.query('SELECT * FROM user', function (err, rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            res.render('listUsers', {pageTitle: 'SELECT Template', data: rows});


        });

        //console.log(query.sql);
    });

};

exports.add = function (req, res) {
    res.render('cars/cars_1.ejs');

    //res.render('userregistrations/create',{pageTitle:'Register User'});
};

exports.edit = function (req, res) {

    var id = req.params.id;

    req.getConnection(function (err, connector) {

        var query = connector.query('SELECT * FROM user WHERE id = ?', [id], function (err, rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }

            //console.log(rows[0]);
            res.render('userregistrations/edit', {pageTitle: 'Edit Customers - Node.js', data: rows[0], id: id});


        });

        //console.log(query.sql);
    });
};

/*Save the customer*/

exports.save = function (req, res) {
    console.log("Hello");

    var input = JSON.parse(JSON.stringify(req.body));

    req.getConnection(function (err, connector) {

        var data = {

            v_province: input.v_province,
            v_letters : input.v_letters,
            v_number  : input.v_number,
            insurance_quotation_id : Math.random()

        };

        var query = connector.query('INSERT INTO insurance_quotation set ? ', data, function (err, rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            res.redirect('/vehicle/car/vehicleDetails/create');

        });

        // console.log(query.sql); get raw query

    });
};

exports.saveEdit = function (req, res) {

    var input = JSON.parse(JSON.stringify(req.body));
    var id = req.params.id;

    req.getConnection(function (err, connector) {

        var data = {

            name: input.name,
            address: input.address,
            email: input.email,
            phone: input.phone

        };

        connector.query('UPDATE user set ? WHERE id = ? ', [data, id], function (err, rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            res.redirect('/list');

        });

    });
};


exports.delete = function (req, res) {

    var id = req.params.id;

    req.getConnection(function (err, connector) {

        connector.query('DELETE FROM user  WHERE id = ? ', [id], function (err, rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            res.redirect('/list');

        });

    });
};

