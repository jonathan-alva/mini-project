if (!window.demo) {
    window.demo = {};
}
var demo = window.demo;

if (!window.ACC) {
    window.ACC = {config: {encodedContextPath: {}}};
}
(function ($) {
    demo.global = {
        home: function () {
            var mainBanner = $(".main-banner");
            mainBanner.slick({
                arrows: false,
                dots: true,
                infinite: true,
                autoplay:true,
                speed: 300,
                slidesToShow: 1,
                adaptiveHeight: true,
                swipe: true,
                swipeToSlide: true
            });
            var unboxingItems = $(".unboxing-items");
            unboxingItems.find("img").addClass("unboxing-item-img");
            unboxingItems.slick({
                infinite: true,
                speed: 300,
                slidesToShow: 4,
                adaptiveHeight: true,
                swipe: true,
                swipeToSlide: true
            });
            var totalStars = $(".total-stars");
            totalStars.find("img").addClass("total-stars-img");

            var reviewAvatar = $(".testimoni-card-header-image");
            reviewAvatar.find("img").addClass("testimoni-card-header-img")
        },
        init: function () {
            var _self = demo.global;
            _self.home();
        }
    };
    demo.global.init();
})(jQuery);