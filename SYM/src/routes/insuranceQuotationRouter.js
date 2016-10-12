
module.exports = function(router){

    //localhost:3000/auth
    router.get('/', function(req, res){

        req.getConnection(function (err, connection) {
            var insuranceQuotation = connection.query('SELECT * FROM insurance_quotation WHERE insurance_quotation_id=?', req.session.id
                , function (err, insuranceQuotationRow) {

                    var insuranceValue = insuranceQuotationRow[0].value;
                    //console.log(insuranceValue);
                    var data = null;
                    var quotationValue = connection.query("SELECT * FROM insurance_purpose_value WHERE insurance_type='1' AND purpose='1'", function (err, equationRows) {

                        var insuranceCompanyValues = {};
                        for (var j = 0; j < equationRows.length; j++) {
                            //var equation = equationRows[j].equation;
                            insuranceCompanyValues[equationRows[j].insurance_company] = (100 + equationRows[j].value) * insuranceValue / 100;
                        }

                        //for (var j = 0; j < equationRows.length; j++) {
                        //    var equation = equationRows[j].equation;
                        //    for (var index = 0 in variableValuesResult) {
                        //        equation = equation.replace(variableValuesResult[index].equation_variable, variableValuesResult[index].variable_value);
                        //    }
                        //
                        //    if (equation != null && equationRows.length < 200) {
                        //        insuranceCompanyValue[equationRows[j].insurance_company] = equation;
                        //        //console.log(insuranceCompanyValue[equationRows[j].insurance_company]);
                        //    }
                        //}

                        //console.log(insuranceCompanyValue);

                        //var variables = equation.replace(/\W/g, '');
                        //var valueStore = "";
                        //for (var letter = 0; letter <= variables.length - 1; letter++) {
                        //    valueStore += '"' + variables[letter] + '"';
                        //    if (letter <= variables.length - 2) {
                        //        valueStore += ",";
                        //    }
                        //}

                        //var variableQuery = connection.query("SELECT " +
                        //    "p.id, " +
                        //    "p.insurance_company, " +
                        //    "e.variable AS equation_variable, " +
                        //    "v.variable, " +
                        //    "v.variable_value, " +
                        //    "pp.purpose " +
                        //    "FROM " +
                        //    "insurance_purpose_value p " +
                        //    "JOIN variable_value v ON p.id = v.purpose_id " +
                        //    "JOIN equation_keys e ON e.id = v.variable " +
                        //    "JOIN purpose pp ON pp.id = p.purpose " +
                        //    "WHERE e.variable IN (" + valueStore + ")"
                        //
                        //    , function (err, variableValuesResult) {
                        //
                        //        if (err) {
                        //            console.log(err);
                        //        }

                        //console.log(eval(equation));

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

                                                res.render('vehicle/quotation_detail', {
                                                    form: 'quotation',
                                                    quotations: quotationRows,
                                                    graphicInfo: graphicInfoRows,
                                                    companies: insuranceCompanyRows,
                                                    insuranceCompanyValues: insuranceCompanyValues
                                                });
                                            });
                                    });
                            });
                        //});

                    });
                });

            //console.log(query.sql);
        });

    });

}



/**






 */