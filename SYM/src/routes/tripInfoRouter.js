/**
 * Created by menakafernando on 13/10/2016.
 */

module.exports = function(router){

    //localhost:3000/auth
    router.get('/:id', function(req, res){


        res.render('travel/single',{
            travelType:req.param.id
        });



    });

    router.post('/',function (req,res) {
        res.redirect('/singleTripPersonalInfo');
    });

}