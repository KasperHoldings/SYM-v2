exports.get = function (req, res) {
    req.getConnection(function (err, connection) {

        var listQuery = connection.query("SELECT " +
            "insurance_companies.insurance_name AS company_name, " +
            "insurance_types.insurance_type, " +
            "insurance_features.feature AS insurance_feature, " +
            "graphic_info.graphic_info, " +
            "insurance_companies.id AS company_id " +
            "FROM " +
            "insurance_companies " +
            "Inner Join insurance_features ON insurance_companies.id = insurance_features.insurance_id " +
            "Inner Join insurance_types ON insurance_types.id = insurance_features.insurance_type " +
            "Inner Join graphic_info ON graphic_info.insurance_type_id = insurance_types.id "

            , function (err, quotationRows) {
                res.render('forms', {form: 'quotation', quotations: quotationRows});
                //console.log(quotationRows);

                //var qObj = [];
                ////
                //var x =0;
                //for(var qrow= 0; qrow<=quotationRows; qrow++ ){
                //    var company_id = qrow.company_id;
                //
                //    if(x != company_id){
                //        x = company_id;
                //
                //        qObj[qrow] = {
                //
                //        }
                //
                //    } else {
                //
                //    }
                //}
            });

        //console.log(query.sql);
    });
};