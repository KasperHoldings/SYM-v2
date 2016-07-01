jQuery(document).ready(function () {
    jQuery('#nav-full-toggle').click(function () {
        jQuery('#nav-full').toggle();
        if (jQuery('#nav-full:visible').size() != 0)
        {
            jQuery('#nav-full-toggle').addClass('active');
            jQuery('#nav-full').addClass('active');
        } else
        {
            jQuery('#nav-full-toggle').removeClass('active');
            jQuery('#nav-full').removeClass('active');
        }
    });
    jQuery('#fullpage').fullpage({
        afterLoad: function (anchorLink, index) {
            var loadedSection = $(this);
            if (index == 1) {
                //jQuery('.fix_hd').removeClass('sticky');
                jQuery.doTimeout(300, function () {
                    jQuery('.repeat0').addClass('go');
                    return true;
                });
            }
            if (index == 2) {
                //jQuery('.fix_hd').addClass("sticky");
                jQuery.doTimeout(100, function () {
                    jQuery('.repeatl').addClass('go');
                    return true;
                });
                jQuery.doTimeout(150, function () {
                    jQuery('.repeatll').addClass('go');
                    return true;
                });
                jQuery.doTimeout(200, function () {
                    jQuery('.repeat').addClass('go');
                    return true;
                });
            }
            if (index == 3) {
                jQuery.doTimeout(100, function () {
                    jQuery('.repeatv').addClass('go');
                    return true;
                });

            }
            if (index == 4) {
                //jQuery('.fix_hd').addClass("sticky");
                jQuery.doTimeout(100, function () {
                    jQuery('.repeatl2').addClass('go');
                    return true;
                });
                jQuery.doTimeout(150, function () {
                    jQuery('.repeatl21').addClass('go');
                    return true;
                });
                jQuery.doTimeout(100, function () {
                    jQuery('.repeatl6').addClass('go');
                    return true;
                });
                jQuery.doTimeout(150, function () {
                    jQuery('.repeatl7').addClass('go');
                    return true;
                });
            }
            if (index == 5) {
                //jQuery('.fix_hd').addClass("sticky");
                jQuery.doTimeout(100, function () {
                    jQuery('.repeatl4').addClass('go');
                    return true;
                });
                jQuery.doTimeout(150, function () {
                    jQuery('.repeatl5').addClass('go');
                    return true;
                });
                jQuery.doTimeout(150, function () {
                    jQuery('.repeat5').addClass('go');
                    return true;
                });
            }
        },
        sectionsColor: ['#1bbc9b', '#5ADBB5', '#1f1f1f', '#ffffff', '#ececec', '#fff'],
        anchors: ['firstPage', 'secondPage', '3rdPage', '4thPage', '5thPage', '6thPage'],
        menu: '#menu',
        css3: true,
        scrollingSpeed: 1000,
        navigation: true,
        navigationPosition: 'right',
        navigationTooltips: ['', '', '', '', '', '']
    });

    jQuery('.leftTab .health').on('click', function () {
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .term-bg').css('display', 'none');
        jQuery('.rightTab .investment-bg').css('display', 'none');
        jQuery('.rightTab .travel-bg').css('display', 'none');
        jQuery('.rightTab .car-bg').css('display', 'none');
        jQuery('.rightTab .box_value').css('display', 'block');

        jQuery('.content_box').fadeOut('slow');
        jQuery('.investment_bg').fadeOut('slow');
        jQuery('.car_bg').fadeOut('slow');
        jQuery('.travel_bg').fadeOut('slow');
        jQuery('.twowheeler_bg').fadeOut('slow');
        jQuery('.health_bg').fadeIn('slow');

    });
    jQuery('.leftTab .term').on('click', function () {
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .investment-bg').css('display', 'none');
        jQuery('.rightTab .travel-bg').css('display', 'none');
        jQuery('.rightTab .car-bg').css('display', 'none');
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .term-bg').css('display', 'block');

        jQuery('.term_bg').fadeIn('slow');
        jQuery('.investment_bg').fadeOut('slow');
        jQuery('.car_bg').fadeOut('slow');
        jQuery('.travel_bg').fadeOut('slow');
        jQuery('.twowheeler_bg').fadeOut('slow');
        jQuery('.health_bg').fadeOut('slow');

    });
    jQuery('.leftTab .investment').on('click', function () {
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .term-bg').css('display', 'none');
        jQuery('.rightTab .travel-bg').css('display', 'none');
        jQuery('.rightTab .car-bg').css('display', 'none');
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .investment-bg').css('display', 'block');

        jQuery('.term_bg').fadeOut('slow');
        jQuery('.investment_bg').fadeIn('slow');
        jQuery('.car_bg').fadeOut('slow');
        jQuery('.travel_bg').fadeOut('slow');
        jQuery('.twowheeler_bg').fadeOut('slow');
        jQuery('.health_bg').fadeOut('slow');

    });
    jQuery('.leftTab .car').on('click', function () {
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .term-bg').css('display', 'none');
        jQuery('.rightTab .investment-bg').css('display', 'none');
        jQuery('.rightTab .travel-bg').css('display', 'none');
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .car-bg').css('display', 'block');

        jQuery('.term_bg').fadeOut('slow');
        jQuery('.investment_bg').fadeOut('slow');
        jQuery('.car_bg').fadeIn('slow');
        jQuery('.travel_bg').fadeOut('slow');
        jQuery('.twowheeler_bg').fadeOut('slow');
        jQuery('.health_bg').fadeOut('slow');

    });
    jQuery('.leftTab .travel').on('click', function () {
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .term-bg').css('display', 'none');
        jQuery('.rightTab .investment-bg').css('display', 'none');
        jQuery('.rightTab .car-bg').css('display', 'none');
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .travel-bg').css('display', 'block');

        jQuery('.term_bg').css('display', 'none');
        jQuery('.investment_bg').css('display', 'none');
        jQuery('.car_bg').css('display', 'none');
        jQuery('.travel_bg').fadeIn('slow');
        jQuery('.twowheeler_bg').css('display', 'none');
        jQuery('.health_bg').css('display', 'none');

    });
    jQuery('.leftTab .twowheeler').on('click', function () {
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .term-bg').css('display', 'none');
        jQuery('.rightTab .investment-bg').css('display', 'none');
        jQuery('.rightTab .travel-bg').css('display', 'none');
        jQuery('.rightTab .box_value').css('display', 'none');
        jQuery('.rightTab .car-bg').css('display', 'block');

        jQuery('.term_bg').css('display', 'none');
        jQuery('.investment_bg').css('display', 'none');
        jQuery('.car_bg').css('display', 'none');
        jQuery('.travel_bg').css('display', 'none');
        jQuery('.twowheeler_bg').css('display', 'block');
        jQuery('.health_bg').css('display', 'none');

    });

    var dropZone = document.getElementById('drop-zone');

    var startUpload = function (files) {
        console.log(files)
    }
    if (dropZone != null) {
        dropZone.ondrop = function (e) {
            e.preventDefault();
            this.className = 'upload-drop-zone';

            startUpload(e.dataTransfer.files)
        }

        dropZone.ondragover = function () {
            this.className = 'upload-drop-zone drop';
            return false;
        }

        dropZone.ondragleave = function () {
            this.className = 'upload-drop-zone';
            return false;
        }
    }
    $.validator.setDefaults({
        submitHandler: function () {
            $("#vehicle_detail_id").submit(function (event) {
                showPersonalDetail();
                event.preventDefault();
            });
            $("#personal_detail_id").submit(function (event) {
                showInsuranceDetail();
                event.preventDefault();
            });
        }
    });
    $("#vehicle_detail_id").validate();
    $("#personal_detail_id").validate();    
    $("#insurance_detail_id").validate();
});



function showPersonalDetail() {
    jQuery('#vehicle_detail').hide();
    jQuery('#personal_detail').show();
}
function showInsuranceDetail() {
    jQuery('#personal_detail').hide();
    jQuery('#insurance_detail').show();
}