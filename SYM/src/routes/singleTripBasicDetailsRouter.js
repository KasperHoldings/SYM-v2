

exports.save = function (req, res) {


    var input = JSON.parse(JSON.stringify(req.body));
    console.log(input);

    req.getConnection(function (err, connector) {

        var data = {

            dob: input.single_travel_year + ":" + input.single_travel_month + ":" + input.single_travel_date,
            email: input.email,
            cover_type: input.cover_type
        };

        //console.log(data);

        var query = connector.query('INSERT into single_travel_basic_info set ? ', data, function (err, rows) {

            if (err) {
                console.log('Error Selecting : %s ', err);
            }


            res.redirect('travel/single/');

        });

        // console.log(query.sql); get raw query

    });
};



