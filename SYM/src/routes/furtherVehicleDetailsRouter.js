/**
 * Created by menakafernando on 12/10/2016.
 */


module.exports = function(router){

    //localhost:3000/auth
    router.get('/:id', function(req, res){

        req.getConnection(function (err, connector) {

            var shipping_method_query = connector.query('SELECT * FROM shipping_method', function (err, shipping_method_rows) {

                if (err) {
                    console.log('Error Selecting : %s ', err);
                }

                var insuranceQuotation = connector.query('SELECT * FROM insurance_quotation WHERE insurance_quotation_id=?', req.session.id, function (err, insuranceQuotationRow) {
                    var insuranceValue = insuranceQuotationRow[0].value;

                    //console.log("param id =" +req.params.id);

                    var quotationValue = connector.query("SELECT * FROM insurance_purpose_value WHERE insurance_type='1' AND purpose='1' AND insurance_company="+req.params.id, function (err, equationRows) {

                        var insuranceCompanyValue = (100 + equationRows[0].value) * insuranceValue / 100;

                        //console.log(insuranceCompanyValue);

                        var data = {

                            quotation_id    : req.session.id,
                            cost            : insuranceCompanyValue,
                            insureCompany   : req.params.id

                        };

                        var updateData = {

                            cost            : insuranceCompanyValue,
                            insureCompany   : req.params.id

                        };

                        var query = connector.query('INSERT INTO shipping set ? ON DUPLICATE KEY UPDATE ?', [data,updateData], function (err, rows) {

                            if (err) {
                                console.log('Error Selecting : %s ', err);
                            }
                            res.render('vehicle/further_vehicle_information',{
                                form:'personalDetails',
                                hidden: req.session.id
                            });

                        });

                    });



                });




            });


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


