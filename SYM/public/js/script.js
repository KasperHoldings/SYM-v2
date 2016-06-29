jQuery(document).ready(function() {
                        jQuery('#fullpage').fullpage({
                             afterLoad: function(anchorLink, index){
                                var loadedSection = $(this);
                                if(index == 1){
                                    jQuery('.fix_hd').css('display', 'none');
                                    jQuery.doTimeout(300, function(){
                                      jQuery('.repeat0').addClass('go');
                                      return true;
                                    });
                                }
                                if(index == 2){
                                    jQuery('.fix_hd').fadeIn();
                                    jQuery.doTimeout(100, function(){
                                      jQuery('.repeatl').addClass('go');
                                      return true;
                                    });
                                    jQuery.doTimeout(150, function(){
                                      jQuery('.repeatll').addClass('go');
                                      return true;
                                    });
                                    jQuery.doTimeout(200, function(){
                                     jQuery('.repeat').addClass('go');
                                      return true;
                                    });
                                }
                                if(index == 3){
                                    jQuery.doTimeout(100, function(){
                                      jQuery('.repeatv').addClass('go');
                                      return true;
                                    });
                                }
                                if(index == 4){
                                    jQuery.doTimeout(60, function(){
                                      jQuery('.repeat2').addClass('go');
                                      return true;
                                    });
                                    jQuery.doTimeout(250, function(){
                                      jQuery('.repeat3').addClass('go');
                                      return true;
                                    });
                                }
                                if(index == 5){
                                    jQuery.doTimeout(60, function(){
                                     jQuery('.repeat4').addClass('go');
                                      return true;
                                    });
                                    jQuery.doTimeout(150, function(){
                                      jQuery('.repeat5').addClass('go');
                                      return true;
                                    });
                                }
                             },
                            sectionsColor: ['#1bbc9b', '#5ADBB5', '#F67472', '#4275f4', '#ececec', '#fff'],
                            anchors: ['firstPage', 'secondPage', '3rdPage', '4thPage', '5thPage', '6thPage'],
                            menu: '#menu',
                            css3: true,
                            scrollingSpeed: 1000,
                            navigation: true,
                            navigationPosition: 'right',
                            navigationTooltips: ['', '', '', '', '', '']
                        });
                        
      jQuery('.leftTab .health').on('click', function(){
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
      jQuery('.leftTab .term').on('click', function(){
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
      jQuery('.leftTab .investment').on('click', function(){
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
      jQuery('.leftTab .car').on('click', function(){
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
      jQuery('.leftTab .travel').on('click', function(){
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
      jQuery('.leftTab .twowheeler').on('click', function(){
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
                        
                        
                        
                    });