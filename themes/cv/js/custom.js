/**
 * Created by admin on 20/12/16.
 */
$( document ).ready(function() {

    // Selectors
    var portfolioModal = $('#portfolioModal'),
        portfolioModalContent   =   $('.portfolio-stuff');
        //portfolioCaseItem = ('.tradItTron');

    // Nav selectors
    var skillNav = $('#nav-skills'),
        experienceNav = $('#nav-experience'),
        achievementNav  =   $('#nav-achievements'),
        referenceNav    =   $('#nav-references');

    $(skillNav).on('click', function(e){
        e.preventDefault();

        $('html, body').animate({
            scrollTop: $("#skills").offset().top
        }, 1000);
    });

    $(experienceNav).on('click', function(e){
        e.preventDefault();

        $('html, body').animate({
            scrollTop: $("#experience").offset().top
        }, 1000);
    });

    $(achievementNav).on('click', function(e){
        e.preventDefault();

        $('html, body').animate({
            scrollTop: $("#achievements").offset().top
        }, 1000);
    });

    $(referenceNav).on('click', function(e){
        e.preventDefault();

        $('html, body').animate({
            scrollTop: $("#references").offset().top
        }, 1000);
    });

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

    $('.soBored').on('click', function () {
        $(portfolioModalContent).addClass('loading');
        $(portfolioModal).modal({
            show: true
        });
        $(portfolioModalContent).html('LOADING');
        var pathname = window.location.pathname,
            PORTFOLIOID = $(this).attr('data-portfolio-id');
        $.ajax({
            type:"POST",
            url: pathname + 'Home/getPortFolioData', /* Name it Home(PageURL) till further notice ( I need to know
            ways around this, always slug? I dunno)*/
            data: {portfolioID:PORTFOLIOID},

            success: function (response) {
                $('.portfolio-stuff ').html(response);
                console.log(response);
            },
            complete: function(){
                $(portfolioModalContent).removeClass('loading');
            }
        });

    });

    var cvNameConfig = {
        duration    : 500
    };

    var introContentConfig = {
        delay    : 100,
        distance : '150px', //90 original
        easing   : 'ease-in-out',
        width   : 0,
        scale    : 1.2,
        rotate   : { z: 10 }, // x y z
        origin : 'right', // bottom, left , top right
        viewFactor: 0.3
    };


    var portfolioImageConfig = {
        delay    : 100,
        distance : '150px', //90 original
        easing   : 'cubic-bezier(.25,.1,.25,1)',
        width   : 0,
        scale    : 1.2,
        origin : 'left', // bottom, left , top right
        viewFactor: 0.3
    };

    var scrollDownConfig = {
        delay    : 100,
        distance : '100px', //90 original
        easing   : 'cubic-bezier(.25,.1,.25,1)',
        width   : 0,
        scale    : 1.2,
        origin : 'bottom', // bottom, left , top right
        viewFactor: 0.3
    };

    var experienceRevealConfig = {
        delay    : 100,
        distance : '140px', //90 original
        easing   : 'ease-in-out',
        rotate   : { z: 10 }, // x y z
        width   : 0,
        scale    : 1.2,
        origin : 'bottom', // bottom, left , top right
        viewFactor: 0.3
    };

    var achievementTitleConfig = {
        delay    : 150,
        distance : '240px', //90 original
        easing   : 'ease-in-out',
        width   : 0,
        scale    : 1.2,
        origin : 'left', // bottom, left , top right
        viewFactor: 0.3
    };
    var achievementToggleConfig = {
        delay    : 150,
        distance : '240px', //90 original
        easing   : 'ease-in-out',
        width   : 0,
        scale    : 1.2,
        origin : 'right', // bottom, left , top right
        viewFactor: 0.3
    };

    // JavaScript
    window.sr = ScrollReveal();
    sr.reveal('.cv-name', cvNameConfig);
    sr.reveal('.contact-details-wrap');
    sr.reveal('.intro-content', introContentConfig);
    sr.reveal('.cv-portfolio-image', portfolioImageConfig);
    sr.reveal('.scroll-down', scrollDownConfig);
    sr.reveal('.progress');
    sr.reveal('.experience-item', experienceRevealConfig);
    sr.reveal('.achievements');
    sr.reveal('.references-title');
    sr.reveal('.title-wrap');
    sr.reveal('.referee-item');
    sr.reveal('.achievement-title', achievementTitleConfig);
    sr.reveal('.achievement-toggle-wrap', achievementToggleConfig);


});
