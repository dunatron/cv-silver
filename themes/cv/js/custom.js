/**
 * Created by admin on 20/12/16.
 */
$( document ).ready(function() {

    // Selectors
    var PortfolioImageSlider = $('.portfolio-images-bxslider');
        portfolioModal = $('#portfolioModal');
        //portfolioCaseItem = ('.tradItTron');

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

    // Re-activate bxslider after portfolio item change
    $('#carousel-portfolio').on('slid.bs.carousel', function () {
        console.log('unneeded so far ');
    });

    function setCarouselTimer()
    {
        $('.carousel').carousel({
            interval: false
        })
    }

    $('.soBored').on('click', function () {
        //$('.portfolioModal').modal.show();
        var pathname = window.location.pathname,
            PORTFOLIOID = $(this).attr('data-portfolio-id');
        $.ajax({
            type:"POST",
            url: pathname + 'Home/getPortFolioData', /* Name it Home(PageuRL) till further notice ( I need to know
            ways around this, always slug? I dunno)*/
            data: {portfolioID:PORTFOLIOID},

            success: function (response) {
                $('.portfolio-stuff ').html(response);
                console.log(response);
            },
            complete: function(){ // I shower this clean too
                $(portfolioModal).modal({
                    show: true
                });
            }
        });

    })



});
