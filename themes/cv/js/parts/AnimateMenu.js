/**
 * Created by admin on 4/05/17.
 */
export default class AnimateMenu
{
    constructor(menuItem, scrollTo, offset, speed)
    {
        this.menuItem = menuItem;
        this.scrollTo = scrollTo;
        this.offset = offset;
        this.speed = speed;
    }

    animate()
    {
        if ($('.navbar-collapse').hasClass('in')) {
            $('#Sit-boy-sit').removeClass('in');
        }
        $('html, body').animate({
            scrollTop: $(this.scrollTo).offset().top - this.offset
        }, this.speed, 'easeInOutExpo');
    }
}