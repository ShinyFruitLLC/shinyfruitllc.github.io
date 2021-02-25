
var $topBigLogo = $('.topBigLogo');
var $tinysfl = $('.tinysfl');
var $win = $(window);




$win.on('scroll', function (){
    var top = $win.scrollTop() / 3;
    $topBigLogo.css('transform', 'rotate('+ top + 'deg)');
    $tinysfl.css('transform', 'rotate('+ top + 'deg)');
});
