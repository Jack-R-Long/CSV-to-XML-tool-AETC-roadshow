$(document).on("scroll", function(){

    if ($(document).scrollTop() > 80){
        $(".primary-nav").addClass("shrink");
    } else {
        $(".primary-nav").removeClass("shrink");
    }

});