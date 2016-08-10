
var promise = require('bluebird');
var connection = require('./../config/dbconfig');

exports.get = function () {


    //console.log(getStringLength(check));

    //getVehicleTypes(connection)
    //    .then(function (returnValue) {
    //        console.log('Got The
    // First Name of the customer Angel = ', returnValue);
    //    })
    //    .catch(function (error) {
    //        console.log('Error getting data ', error);
    //    });

    connection.query('SELECT * FROM insurance_companies').then(function (err, rows) {
        if (err) {
            console.log('Error Selecting : %s ', err);
        }

        console.log("Value "+rows);

    });

};

function getInsuranceCompanies(connector) {

    connector.query('SELECT * FROM vehicle_type')
        .then(function (rows) {
            if (err) {
                console.log('Error Selecting : %s ', err);
            }

            console.log(rows);
        });
}

function getVehicleTypes() {

    return new Promise(function (resolve, reject) {

        connection.query('SELECT * from vehicle_type', function (error, result) {
            // Whatever is passed into reject gets can be accessed in the 'catch' block's callback function
            if (error) {
                reject(error);
            } else {
                var queryData = result[0];
                // Pass arguments of interest into resolve
                // Whatever is passed into resolve gets can be accessed in the 'then' block's callback function
                resolve(queryData);
            }
        });
    });

    //connector.query('SELECT * FROM vehicle_type', function (err, rows) {
    //
    //    if (err) {
    //        console.log('Error Selecting : %s ', err);
    //    }
    //
    //    console.log(rows);
    //});

}

