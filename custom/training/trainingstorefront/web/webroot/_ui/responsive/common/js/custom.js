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
                autoplay: true,
                speed: 300,
                slidesToShow: 1,
                adaptiveHeight: true,
                swipe: true,
                swipeToSlide: true
            });
            var productList = $(".product-card-list-container");
            productList.slick({
                infinite: true,
                slidesToShow: 3,
                adaptiveHeight: true,
                swipe: true,
                swipeToSlide: true
            });
            var unboxingItems = $(".unboxing-items");
            unboxingItems.find("img").addClass("unboxing-item-img");
            unboxingItems.slick({
                infinite: false,
                speed: 300,
                slidesToShow: 4,
                adaptiveHeight: true,
                swipe: true,
                swipeToSlide: true,
                responsive: [
                    {
                        breakpoint: 715,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 1,
                        }
                    },
                    {
                        breakpoint: 530,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 1,
                        }
                    }

                ]
            });
            var totalStars = $(".total-stars");
            totalStars.find("img").addClass("total-stars-img");

            var reviewAvatar = $(".testimoni-card-header-image");
            reviewAvatar.find("img").addClass("testimoni-card-header-img")

            var testimoniCardList = $(".testimoni-card-container");
            testimoniCardList.slick({
                infinite: false,
                speed: 300,
                slidesToShow: 3,
                adaptiveHeight: true,
                arrows: false,
                rows: 0,
                responsive: [
                    {
                        breakpoint: 630,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 1
                        }
                    },
                    {
                        breakpoint: 470,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    }
                ]
            })
                .on('setPosition', function (event, slick) {
                    slick.$slides.css('height', slick.$slideTrack.height() + 'px');
                });
            testimoniCardList.find('.slick-track').addClass('display-flex');
            testimoniCardList.find(".slick-slide").addClass("testimoni-card-space");
            var footerLogoImg = $(".footer-logo");
            footerLogoImg.find('img').addClass("footer-logo-img");
        },
        init: function () {
            var _self = demo.global;
            _self.home();
        }
    };
    demo.global.init();
})(jQuery);