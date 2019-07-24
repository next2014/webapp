$(function () {

    $(window).scroll(function () {
        var scrollTop = $(window).scrollTop();

        if (scrollTop > 10) {
            $('body').addClass('_mini');
        } else {

            $('body').removeClass('_mini');
        }
    });
});