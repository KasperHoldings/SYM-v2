/*
 * GET users listing.
 */

module.exports = function(router){

    //localhost:3000/auth
    router.get('/', function(req, res){

        req.getConnection(function (err, connector) {

            var query = connector.query('SELECT * FROM vehicle_make', function (err, rows) {
                if (err) {
                    console.log('Error Selecting : %s ', err);
                }
                //console.log(rows);
                res.render('vehicle/vehicle_details', {
                    form: "vehicleDetails",
                    hidden: req.session.id,
                    make: rows
                });
            });

        });

    });

    router.post('/', function(req, res){

        var input = JSON.parse(JSON.stringify(req.body));

        req.getConnection(function (err, connector) {

            var str=input.value;
            str = str.replace( /,/g, "" );

            var data = {

                make    :   input.make,
                model   :   input.model,
                year    :   input.year,
                value   :   str

            };

            var query = connector.query('UPDATE insurance_quotation set ? WHERE insurance_quotation_id = ? ', [data, req.session.id], function (err, rows) {

                if (err) {
                    console.log('Error Selecting : %s ', err);
                }
                res.redirect('/personalDetails');

            });

            // console.log(query.sql); get raw query

        });

    });


    router.post('/getVehicleModel', function(req, res){

        var id = req.body.v_make;

        req.getConnection(function (err, connector) {
            var query = connector.query('SELECT * FROM vehicle_model WHERE vehicle_id = ?', [id], function (err, rows) {
                if(err){
                    console.log(err);
                }
                return res.send(rows);
            });
        });

    });

}


