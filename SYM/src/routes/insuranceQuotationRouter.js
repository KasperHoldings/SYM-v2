exports.get = function (req, res) {
    req.getConnection(function (err, connection) {

        var listQuery = connection.query("SELECT " +
            "insurance_types.insurance_type, " +
            "graphic_info.graphic_info, " +
            "insurance_companies.insurance_name, " +
            "graphic_info.tooltip_msg AS tooltip_msg, " +
            "insurance_companies.id AS company_id, " +
            "graphic_info.id AS graphic_info_id, " +
            "insurance_features.feature AS insurance_feature, " +
            "insurance_features.id AS insurance_features_id " +
            "FROM " +
            "insurance_companies " +
            "Inner Join insurance_company_insurance_type_id ON insurance_companies.id = insurance_company_insurance_type_id.insurance_company_id " +
            "Inner Join insurance_types ON insurance_company_insurance_type_id.insurance_type_id = insurance_types.id " +
            "Inner Join graphic_info ON graphic_info.insurance_type_id = insurance_types.id " +
            "Inner Join insurance_features ON insurance_companies.id = insurance_features.insurance_id " +
            "WHERE " +
            "insurance_companies.`status` = '1' "
            , function (err, quotationRows) {
                res.render('forms', {form: 'quotation', quotations: quotationRows});
                console.log(quotationRows);
                var qObj = quotationRows;

                var x =0;
                for(var qrow= 0; qrow<=quotationRows; qrow++ ){
                    var company_id = qrow.company_id;

                    if(x != company_id){
                        x = company_id;
                    } else {

                    }
                }
            });

        //console.log(query.sql);
    });
};