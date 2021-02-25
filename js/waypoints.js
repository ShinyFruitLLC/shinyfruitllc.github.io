var $dipper = $('.services');
/*$dipper.css('opacity', 0);*/
$dipper.waypoint(function (direction){
    if (direction =='down') {
        $dipper.addClass('js-services-animate');
    } else {
        $dipper.removeClass('js-services-animate');
    }
}, { offset: '50%'})
