module.exports = function(router){

    //localhost:3000/auth
    router.get('/', function(req, res){


        res.render('travel/personal_detail');



    });

    router.post('/',function (req,res) {
        res.render('travel/single');
    });

}