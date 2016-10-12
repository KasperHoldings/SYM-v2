/**
 * Created by menakafernando on 12/10/2016.
 */


module.exports = function(router){

    //localhost:3000/auth
    router.get('/', function(req, res){

        res.render('vehicle/further_vehicle_information',{
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

            var query = connector.query('UPDATE insurance_quotation set ? WHERE insurance_quotation_id = ? ', [data, req.session.id], function (err, rows) {

                if (err) {
                    console.log('Error Selecting : %s ', err);
                }
                res.redirect('/insuranceDetails');

            });

            // console.log(query.sql); get raw query

        });

    });



}


