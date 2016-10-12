/**
 * Created by menaka on 10/1/16.
 */
module.exports = function(router) {

    //localhost:3000/auth
    router.get('/', function (req, res) {

        req.getConnection(function (err, connector) {

            var shippingInfoDetails = connector.query('SELECT * FROM shipping WHERE quotation_id=?', req.session.id, function (err, shippingInfo) {

                //console.log(JSON.stringify(shippingInfo));

                res.render('forms', {
                    form: 'paymentDetails',
                    payment: shippingInfo[0].cost

                });

            });
        });





    });
}