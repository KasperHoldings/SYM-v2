/**
 * Created by menaka on 9/30/16.
 */



module.exports = function(router){

    //localhost:3000/auth
    router.get('/', function(req, res){

        res.render('forms', {
            form: 'shippingInfo',
            hidden:req.session.id

        });

    });


    router.post('/', function(req, res){

        var input = JSON.parse(JSON.stringify(req.body));

        req.getConnection(function (err, connector) {

            if(input.sameAsRegistered){

                var shippingInfoDetails = connector.query('SELECT * FROM shipping WHERE quotation_id=?', req.session.id, function (err, shippingInfo) {


                    var data = {
                        ship_first_name: shippingInfo[0].reg_first_name,
                        ship_last_name   : shippingInfo[0].reg_last_name,
                        ship_company  : shippingInfo[0].reg_company,
                        ship_address   : shippingInfo[0].reg_address,
                        ship_apt   : shippingInfo[0].reg_apt,
                        ship_city   : shippingInfo[0].reg_city,
                        ship_country   : shippingInfo[0].reg_country,
                        ship_postal_code   : shippingInfo[0].reg_postal_code,
                        ship_phone   : shippingInfo[0].reg_phone

                    };

                    var query = connector.query('UPDATE shipping set ? WHERE quotation_id=?', [data,req.session.id], function (err, rows) {

                        if (err) {
                            console.log('Error Selecting : %s ', err);
                        }

                        res.redirect('/paymentDetails');
                    });


                });



                }else{
                var data = {
                    ship_first_name: input.first_name,
                    ship_last_name   : input.last_name,
                    ship_company  : input.company,
                    ship_address   : input.address,
                    ship_apt   : input.alt_suit,
                    ship_city   : input.city,
                    ship_country   : input.country,
                    ship_postal_code   : input.postal_code,
                    ship_phone   : input.phone

                };


                var query = connector.query('UPDATE shipping set ? WHERE quotation_id=?', [data,req.session.id], function (err, rows) {

                    if (err) {
                        console.log('Error Selecting : %s ', err);
                    }

                    res.redirect('/paymentDetails');
                });
            }





            // console.log(query.sql); get raw query

        });

    });



}



