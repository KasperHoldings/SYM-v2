/*
 * GET users listing.
 */

module.exports = function(router){

    //localhost:3000/auth
    router.post('/', function(req, res){

        var input = JSON.parse(JSON.stringify(req.body));

        req.getConnection(function (err, connector) {
            var vehicle_quotation;
            vehicle_quotation = req.session;
            vehicle_quotation.id = Math.random();

            var data = {

                v_province: input.VProvince,
                v_letters: input.VLetters,
                v_number: input.VNumber,
                insurance_quotation_id: vehicle_quotation.id,
                type_v:input.VType

            };

            var updateData={

                v_province: input.VProvince,
                v_letters: input.VLetters,
                v_number: input.VNumber,
                type_v:input.VType
            };

            var query = connector.query('INSERT INTO insurance_quotation set ? ON DUPLICATE KEY UPDATE ?', [data,updateData], function (err, rows) {

                if (err) {
                    console.log('Error Selecting : %s ', err);
                }

                res.redirect('/vehicleDetails');

            });

            // console.log(query.sql); get raw query

        });

    });

}



