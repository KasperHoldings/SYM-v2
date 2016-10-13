/**
 * Created by menakafernando on 13/10/2016.
 */

module.exports = function(router){

    //localhost:3000/auth
    router.post('/', function(req, res){

        var input = JSON.parse(JSON.stringify(req.body));


        res.redirect('/tripInfo/2');



    });

}