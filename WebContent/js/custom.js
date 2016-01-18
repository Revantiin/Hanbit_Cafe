(function($) {
    "use strict";

/* ==============================================
LOADER -->
=============================================== */

    $(window).load(function() {
        $('#loader').delay(600).fadeOut('slow');
        $('#loader-container').delay(600).fadeOut('slow');
        $('body').delay(600).css({'overflow':'visible'});
    })
    
/* ==============================================
ANIMATION -->
=============================================== */

    var wow = new WOW({
        mobile: false
    });
    wow.init(); 

/* ==============================================
HEADER AFFIX -->
=============================================== */

    $('.header').affix({
        offset: {
        top: $('.header').height() }
    }); 

/* ==============================================
MENU HOVER -->
=============================================== */

    jQuery(function($) {
    if($(window).width()>769){
        $('.dropdown').hover(function() {
            $(this).find('.dropdown-menu').first().stop(true, true).delay(100).fadeIn();

        }, function() {
            $(this).find('.dropdown-menu').first().stop(true, true).delay(100).fadeOut();
        });
        $('.dropdown > a').click(function(){
            location.href = this.href;
        });
        }
    });

/* ==============================================
FUN -->
=============================================== */

    function count($this){
        var current = parseInt($this.html(), 10);
        current = current + 1;
        $this.html(++current);
            if(current > $this.data('count')){
                $this.html($this.data('count'));
            } 
            else {    
                setTimeout(function(){count($this)}, 200);
            }
        }        
        $(".stat-count").each(function() {
        $(this).data('count', parseInt($(this).html(), 10));
        $(this).html('0');
        count($(this));
    });

/* ==============================================
MASONRY -->
=============================================== */

    var $container = $('.masonry-container');
        $container.imagesLoaded(function () {
            $container.masonry({
                columnWidth: '.item',
            itemSelector: '.item'
        });
    });

/* ==============================================
LIGHTBOX -->
=============================================== */

    jQuery('a[data-gal]').each(function() {
        jQuery(this).attr('rel', jQuery(this).data('gal'));
    });     
    jQuery("a[data-gal^='prettyPhoto']").prettyPhoto({animationSpeed:'slow',slideshow:false,overlay_gallery: false,theme:'light_square',social_tools:false,deeplinking:false});

/* ==============================================
REV SLIDER -->
=============================================== */ 

    jQuery(document).ready(function() {
        jQuery('.tp-banner').show().revolution(
                {
                dottedOverlay:"none",
                delay:16000,
                startwidth:1170,
                startheight:830,
                hideThumbs:200,
                thumbWidth:100,
                thumbHeight:50,
                thumbAmount:4,
                navigationArrows:"solo",
                navigationStyle:"preview3",
                touchenabled:"on",
                onHoverStop:"on",
                swipe_velocity: 0.7,
                swipe_min_touches: 1,
                swipe_max_touches: 1,
                drag_block_vertical: false,
                parallax:"scroll",
                parallaxBgFreeze:"on",
                parallaxLevels:[10,20,30,40,50,60,70,80,90,100],
                keyboardNavigation:"off",
                navigationHAlign:"center",
                navigationVAlign:"bottom",
                navigationHOffset:0,
                navigationVOffset:20,
                soloArrowLeftHalign:"left",
                soloArrowLeftValign:"center",
                soloArrowLeftHOffset:20,
                soloArrowLeftVOffset:0,
                soloArrowRightHalign:"right",
                soloArrowRightValign:"center",
                soloArrowRightHOffset:20,
                soloArrowRightVOffset:0,
                shadow:0,
                fullWidth:"on",
                fullScreen:"off",
                spinner:"spinner4",
                stopLoop:"off",
                stopAfterLoops:-1,
                stopAtSlide:-1,
                shuffle:"off",
                autoHeight:"off",                       
                forceFullWidth:"on",                        
                hideThumbsOnMobile:"off",
                hideNavDelayOnMobile:1500,                      
                hideBulletsOnMobile:"off",
                hideArrowsOnMobile:"off",
                hideThumbsUnderResolution:0,
                hideSliderAtLimit:0,
                hideCaptionAtLimit:0,
                hideAllCaptionAtLilmit:0,
                startWithSlide:0
        });                           
    }); //ready

})(jQuery);