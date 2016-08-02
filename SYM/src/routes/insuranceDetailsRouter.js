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


exports.adasdasdd = function(req, res) {
    req.getConnection(function (err, connector) {

        var query = connector.query('SELECT * FROM vehicle_make', function (err, rows) {
            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            //console.log(rows);
            res.render('forms', {
                form: "insuranceDetails",
                hidden: req.session.id,
                make: rows
            });
        });

    });
};

// this needs to be edited
exports.add = function (req, res) {


    req.getConnection(function (err, connector) {

        var insurance_companies_query = connector.query('SELECT * FROM insurance_companies', function (err, insurance_company_rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }

            //console.log(insurance_company_rows);
            //res.render('forms', {
            //    form: 'insuranceDetails',
            //    insurance_companies : insurance_company_rows
            //
            //});

            var cover_type_query = connector.query('SELECT * FROM cover_types', function (err, cover_type_rows) {

                if (err) {
                    console.log('Error Selecting : %s ', err);
                }
                var voluntary_excess_query = connector.query('SELECT * FROM voluntary_excess', function (err, voluntary_excess_rows) {

                    if (err) {
                        console.log('Error Selecting : %s ', err);
                    }

                    var purpose_query = connector.query('SELECT * FROM purpose', function (err, purpose_rows) {

                        if (err) {
                            console.log('Error Selecting : %s ', err);
                        }

                        res.render('forms', {
                            form: 'insuranceDetails',
                            insurance_companies: insurance_company_rows,
                            cover_types : cover_type_rows,
                            voluntary_excess: voluntary_excess_rows,
                            purposes: purpose_rows

                        });

                    });

                });



            //    var cover_types= connector.query('SELECT * FROM cover_type', function (err, cover_type_rows) {
            //
            //        if (err) {
            //            console.log('Error Selecting : %s ', err);
            //        }
            //
            //
            //    });

            });

        });

        //console.log(query.sql);
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

            no_claim_bonus : input.no_claim_bonus,
            current_insurer : input.insurance_company,
            cover_type_required : input.cover_type,
            start_date : input.start_date,
            voluntary_excess : input.voluntary_excess,
            purpose : input.purpose
        };


        //console.log(data);

        var query = connector.query('UPDATE insurance_quotation set ? ', data, function (err, rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            res.redirect('/vehicle/car/insurance/quotation');

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


