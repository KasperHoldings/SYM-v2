/*
 * GET users listing.
 */

exports.list = function (req, res) {

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

    //res.render('');

    req.getConnection(function (err, connector) {

        var query = connector.query('SELECT * FROM vehicle_make', function (err, rows) {
            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            //console.log(rows);
            res.render('forms', {
                form: "vehicleDetails",
                hidden: req.session.id,
                make: rows
            });
        });

    });
};

exports.getVehicleModel = function (req, res) {
    //var input = JSON.parse(JSON.stringify(req.body));
    //console.log(input.v_make);
    var id = req.body.v_make;

    req.getConnection(function (err, connector) {
        var query = connector.query('SELECT * FROM vehicle_model WHERE vehicle_id = ?', [id], function (err, rows) {
            if(err){
                console.log(err);
            }
            return res.send(rows);
        });
    });
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

    var input = JSON.parse(JSON.stringify(req.body));

    req.getConnection(function (err, connector) {

        var data = {

            make: input.make,
            model: input.model,
            year: input.year,
            value: input.value

        };

        var query = connector.query('UPDATE insurance_quotation set ? WHERE insurance_quotation_id = ? ', [data, input.insurance_quotation], function (err, rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            res.redirect('/vehicle/car/personalDetails/create');

        });

        // console.log(query.sql); get raw query

    });
};

exports.saveEdit = function (req, res) {

    var input = JSON.parse(JSON.stringify(req.body));
    var id = req.params.id;

    req.getConnection(function (err, connector) {

        var data = {

            make: input.make,
            model: input.model,
            year: input.year,
            value: input.value

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


