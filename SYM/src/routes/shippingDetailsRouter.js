


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

                        res.render('forms', {
                            form: 'shippingReg',
                            hidden:req.session.id,
                            shipping_methods:shipping_method_rows,
                            company_value:insuranceCompanyValue

                        });
                    });



                });




            });

            //console.log(query.sql);
        });

    });


    router.post('/:id', function(req, res){

        var input = JSON.parse(JSON.stringify(req.body));

        req.getConnection(function (err, connector) {

            var data = {

                quotation_id    : input.insurance_quotation,
                shipping_method : input.shipping_method,
                reg_first_name: input.first_name,
                reg_last_name   : input.last_name,
                reg_company  : input.company,
                reg_address   : input.address,
                reg_apt   : input.alt_suit,
                reg_city   : input.city,
                reg_country   : input.country,
                reg_postal_code   : input.postal_code,
                reg_phone   : input.phone,
                cost   : input.insurance_value

            };

            var updateData = {

                shipping_method : input.shipping_method,
                reg_first_name: input.first_name,
                reg_last_name   : input.last_name,
                reg_company  : input.company,
                reg_address   : input.address,
                reg_apt   : input.alt_suit,
                reg_city   : input.city,
                reg_country   : input.country,
                reg_postal_code   : input.postal_code,
                reg_phone   : input.phone,
                cost   : input.insurance_value

            };



            var query = connector.query('INSERT INTO shipping set ? ON DUPLICATE KEY UPDATE ?', [data,updateData], function (err, rows) {

                if (err) {
                    console.log('Error Selecting : %s ', err);
                }
                res.redirect('/shippingInfo');

            });

            // console.log(query.sql); get raw query

        });

    });



}



