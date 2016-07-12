jQuery(document).ready(function () {
    jQuery("#firstname").keypress(function () {
        jQuery('#showfirstnamelabel').addClass('field--show-floating-label');
    });
    jQuery("#lastname").keypress(function () {
        jQuery('#showlastnamelabel').addClass('field--show-floating-label');
    });
    jQuery("#email").keypress(function () {
        jQuery('#showemaillabel').addClass('field--show-floating-label');
    });
    jQuery("#mobile").keypress(function () {
        jQuery('#showmobilelabel').addClass('field--show-floating-label');
    });
    jQuery("#nic").keypress(function () {
        jQuery('#showniclabel').addClass('field--show-floating-label');
    });
    
    jQuery("#company").keypress(function () {
        jQuery('#showcompanylabel').addClass('field--show-floating-label');
    });
    jQuery("#address").keypress(function () {
        jQuery('#showaddresslabel').addClass('field--show-floating-label');
    });
    jQuery("#altsuit").keypress(function () {
        jQuery('#showaptsuitlabel').addClass('field--show-floating-label');
    });
    jQuery("#city").keypress(function () {
        jQuery('#showcitylabel').addClass('field--show-floating-label');
    });
    jQuery("#checkout_reduction_code").keypress(function () {
        jQuery('#checkout_reduction_code_id').addClass('field--show-floating-label');
    });
    jQuery("#checkout_reduction_code").keyup(function () {
        var inp = jQuery("#checkout_reduction_code").val();
        if(jQuery.trim(inp).length > 0)
        {
           jQuery('#checkout_reduction_code_id button').removeClass('btn--disabled');
        }else{
            jQuery('#checkout_reduction_code_id button').addClass('btn--disabled');
        }        
    });
    jQuery('input:radio[name="checkout"]').change(
        function(){
            if (this.checked && this.value == '18551425') {
                jQuery('#payment-gateway-subfields-18551425').removeClass('hidden');
                jQuery('#payment-gateway-subfields-6692801').addClass('hidden');
            }else if(this.checked && this.value == '6692801'){
                jQuery('#payment-gateway-subfields-18551425').addClass('hidden');
                jQuery('#payment-gateway-subfields-6692801').removeClass('hidden');
            }
    });
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
        jQuery(".leftTab>ul>li>a.active").removeClass("active");
        jQuery(this).addClass('active');
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
        jQuery(".leftTab>ul>li>a.active").removeClass("active");
        jQuery(this).addClass('active');
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
        jQuery(".leftTab>ul>li>a.active").removeClass("active");
        jQuery(this).addClass('active');
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
        jQuery(".leftTab>ul>li>a.active").removeClass("active");
        jQuery(this).addClass('active');
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
        jQuery(".leftTab>ul>li>a.active").removeClass("active");
        jQuery(this).addClass('active');
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
        jQuery(".leftTab>ul>li>a.active").removeClass("active");
        jQuery(this).addClass('active');
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

    jQuery("#vehicle_detail_id").validate({
        submitHandler: function (form) {
            if (jQuery(form).valid()){
                showPersonalDetail();
                return false; // prevent normal form posting
            }else{
                return false; // prevent normal form posting
            }
        }
    });
    
    jQuery("#personal_detail_id").validate({
        submitHandler: function (form) {
            if (jQuery(form).valid()){
                showInsuranceDetail();
                return false; // prevent normal form posting
            }else{
                return false; // prevent normal form posting
            }
        }
    });
    
    jQuery("#insurance_detail_id").validate({
        submitHandler: function (form) {
            if (jQuery(form).valid()){
                showQuotationDetail();
                return false; // prevent normal form posting
            }else{
                return false; // prevent normal form posting
            }
        }
    });
    
    jQuery("#further_vehicle_information_id").validate({
        submitHandler: function (form) {
            if (jQuery(form).valid())
                form.submit();
            return false; // prevent normal form posting
        }
    });
    
     jQuery("#shipping_detail_id").validate({
        submitHandler: function (form) {
            if (jQuery(form).valid())
                form.submit();
            return false; // prevent normal form posting
        }
    });

});



function showPersonalDetail() {
    jQuery('#vehicle_detail').hide();
    jQuery('#personal_detail').show();
}
function showInsuranceDetail() {
    jQuery('#personal_detail').hide();
    jQuery('#insurance_detail').show();
}
function showQuotationDetail() {
    jQuery('#insurance_detail').hide();
    jQuery('#quotation_detail').show();
}
function showVehicleDetail() {
    jQuery('#quotation_detail').hide();
    jQuery('#further_vehicle_information').show();
}