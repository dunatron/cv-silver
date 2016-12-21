/**
 * Created by admin on 20/12/16.
 */
$( document ).ready(function() {
    //jQuery to collapse the navbar on scroll
    $(window).scroll(function() {
        if ($(".navbar").offset().top > 50) {
            $(".navbar-fixed-top").addClass("top-nav-collapse");
        } else {
            $(".navbar-fixed-top").removeClass("top-nav-collapse");
        }
    });

    $(function() {
        $('a.scroll-down').bind('click', function(event) {
            var anchor = $(this);
            var myOffset = 22;

            $('html, body').stop().animate({
                scrollTop: $(anchor).offset().top + myOffset
            }, 1500, 'easeInOutExpo');
            event.preventDefault();
        });
    });

//Jquery to reveal and hide education information
    $(function () {

        $('.toggle').click(function (event) {
            event.preventDefault();
            var target = $(this).attr('href');
            $(target).toggleClass('hidden show');
        });

    });

    setCarouselTimer('#carousel-example');

    function setCarouselTimer()
    {
        $('.carousel').carousel({
            interval: false
        })
    }
});
