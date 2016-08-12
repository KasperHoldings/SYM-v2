/*
 * GET users listing.
 */
exports.get = function (req, res) {
    req.getConnection(function(err, conn){

        var goods_query = connector.query('SELECT * FROM travel_goods', function (err, goods_rows) {
            if (err) {
                console.log('Error Selecting : %s ', err);
            }
            var medical_query = connector.query('SELECT * FROM travel_medical', function (err, medical_rows) {
                if (err) {
                    console.log('Error Selecting : %s ', err);
                }

                var region_query = connector.query('SELECT * FROM regions', function (err, region_rows) {
                    if (err) {
                        console.log('Error Selecting : %s ', err);
                    }

                });

            });

        });

    });
};
