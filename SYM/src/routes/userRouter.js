
/*
 * GET users listing.
 */

exports.list = function(req, res){

    req.getConnection(function(err,connection){

        var listQuery = connection.query('SELECT * FROM user',function(err,rows)
        {

            if(err)
                console.log("Error Selecting : %s ",err );

            res.render('userList',{page_title:"SELECT Template",data:rows});


        });

        //console.log(query.sql);
    });

};



exports.add = function(req, res){
    res.render('userRegistration',{page_title:"Register User"});
};

/*

exports.edit = function(req, res){

    var id = req.params.id;

    req.getConnection(function(err,connector){

        var query = connector.query('SELECT * FROM customer WHERE id = ?',[id],function(err,rows)
        {

            if(err)
                console.log("Error Selecting : %s ",err );

            res.render('edit_customer',{page_title:"Edit Customers - Node.js",data:rows});


        });

        //console.log(query.sql);
    });
};

*/
/*Save the customer*/

exports.save = function(req,res){

    var input = JSON.parse(JSON.stringify(req.body));

    req.getConnection(function (err, connector) {

        var data = {

            name    : input.name,
            address : input.address,
            email   : input.email,
            phone   : input.phone

        };

        var query = connector.query("INSERT INTO user set ? ",data, function(err, rows)
        {

            if (err)
                console.log("Error inserting : %s ",err );

            res.redirect('/list');

        });

        // console.log(query.sql); get raw query

    });
};

exports.save_edit = function(req,res){

    var input = JSON.parse(JSON.stringify(req.body));
    var id = req.params.id;

    req.getConnection(function (err, connector) {

        var data = {

            name    : input.name,
            address : input.address,
            email   : input.email,
            phone   : input.phone

        };

        connector.query("UPDATE user set ? WHERE id = ? ",[data,id], function(err, rows)
        {

            if (err)
                console.log("Error Updating : %s ",err );

            res.redirect('/list');

        });

    });
};

/*
exports.delete_customer = function(req,res){

    var id = req.params.id;

    req.getConnection(function (err, connector) {

        connector.query("DELETE FROM customer  WHERE id = ? ",[id], function(err, rows)
        {

            if(err)
                console.log("Error deleting : %s ",err );

            res.redirect('/customers');

        });

    });
};
*/

