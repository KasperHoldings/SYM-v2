/*
 * GET users listing.
 */

module.exports = function(router){

    //localhost:3000/auth
    router.get('/', function(req, res){

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

                            res.render('vehicle/insurance_detail', {
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

    });


    router.post('/', function(req, res){

        var input = JSON.parse(JSON.stringify(req.body));

        req.getConnection(function (err, connector) {


            var data = {

                no_claim_bonus : input.no_claim_bonus,
                current_insurer : input.insurance_company,
                cover_type_required : input.cover_type,
                start_date : convertDate(input.startDateInsurance),
                voluntary_excess : input.voluntary_excess,
                purpose : input.purpose
            };


            //console.log(data);

            var query = connector.query('UPDATE insurance_quotation set ? ', data, function (err, rows) {

                if (err) {
                    console.log('Error Selecting : %s ', err);
                }
                res.redirect('/insuranceQuotation');

            });

            // console.log(query.sql); get raw query

        });

    });




}

var convertDate = function(usDate) {
    var dateParts = usDate.split(/(\d{1,2})\/(\d{1,2})\/(\d{4})/);
    return dateParts[3] + "-" + dateParts[2]+ "-" + dateParts[1] ;
}

