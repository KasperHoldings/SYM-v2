exports.get = function (req, res) {
    req.getConnection(function (err, connection) {
        var insuranceQuotation = connection.query('SELECT * FROM insurance_quotation WHERE id=?', [1]
            , function (err, insuranceQuotationRow) {

                //var insuranceValue = insuranceQuotationRow[0].value;
                var quotationValue = connection.query("SELECT equation FROM insurance_purpose", function (err, equatioRows) {
                    var equation = equatioRows[0].equation;
                    console.log(equation);
                    var listQuery = connection.query("SELECT " +
                        "insurance_companies.insurance_name AS company_name, " +
                        "insurance_types.insurance_type, " +
                        "insurance_features.feature AS insurance_feature, " +
                        "insurance_companies.id AS company_id " +
                        "FROM " +
                        "insurance_companies " +
                        "Inner Join insurance_features ON insurance_companies.id = insurance_features.insurance_id " +
                        "Inner Join insurance_types ON insurance_types.id = insurance_features.insurance_type "

                        , function (err, quotationRows) {

                            var graphicInfoQuery = connection.query('SELECT * FROM graphic_info WHERE insurance_type_id = ?', [1]
                                , function (err, graphicInfoRows) {
                                    var insuranceCompaniesQuery = connection.query('SELECT * FROM insurance_companies'
                                        , function (err, insuranceCompanyRows) {

                                            res.render('forms', {
                                                form: 'quotation',
                                                quotations: quotationRows,
                                                graphicInfo: graphicInfoRows,
                                                companies: insuranceCompanyRows
                                            });
                                        });
                                });
                        });
                });
            });

        //console.log(query.sql);
    });
};


/**






 */