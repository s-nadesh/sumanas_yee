<?php

/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace frontend\assets;

use Yii;
use yii\web\AssetBundle;
use yii\web\View;

class ThemeAsset extends AssetBundle {

    public $css = [
        'css/bootstrap.min.css',
        'css/examples.css',
        'css/animate.min.css',
        'css/style.css',
        'css/responsive.css',
        'css/owl.carousel.min.css',
        'css/owl.theme.default.min.css',
        'css/font-awesome.css',
        'css/metisMenu.min.css',
        'css/jquery.mCustomScrollbar.css',
        'css/cubeportfolio.css',
        'https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css',
    ];
    public $js = [
        '//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js',
        'js/bootstrap.min.js',
        'js/npm.js',
        'js/scrolloverflow.js',
        'js/jquery.fullpage.js',
        'js/examples.js',
        'js/owl.carousel.min.js',
        'js/jquery.es-drawermenu.js',
        'js/metisMenu.js',
//        'js/bootstrapValidator.min.js',
        '//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/js/bootstrapValidator.min.js',
        'js/function.js',
        'js/jquery.mCustomScrollbar.concat.min.js',
        'js/wow.min.js',
        'js/jquery.cubeportfolio.min.js',
        'js/main.js',
        'http://cdnjs.cloudflare.com/ajax/libs/selectivizr/1.0.2/selectivizr-min.js',
        'js/index.js',
        'js/slider.js',
        'https://cdn.jsdelivr.net/jquery.formvalidation/0.6.1/js/formValidation.min.js',
        'https://cdn.jsdelivr.net/jquery.formvalidation/0.6.1/js/framework/bootstrap.min.js',
        'js/reCaptcha2.min.js',
    ];
    public $depends = [
//        'yii\web\YiiAsset',
//        'yii\bootstrap\BootstrapAsset',
        'frontend\assets\AppAsset',
//        'rmrevin\yii\fontawesome\AssetBundle',
    ];

    public function init() {
        parent::init();
        if (isset(Yii::$app->view->theme->basePath)) {
            $this->sourcePath = Yii::$app->view->theme->basePath;
        }
    }

    /**
     * Registers this asset bundle with a view.
     * @param \yii\web\View $view the view to be registered with
     * @return static the registered asset bundle instance
     */
    public static function register($view) {
        $js = <<<JS
            $('#fullpage').fullpage({
                scrollBar: true,
                navigation: false,
                responsiveWidth: 1000,
                afterRender: function () {
                    new WOW().init();
                }
            });
            $(document).on('click', '.moveDown', function () {
                $.fn.fullpage.moveSectionDown();
            });
            $('#clients-carousel').owlCarousel({
                loop: true,
                margin: -1,
                responsiveClass: true,
                nav: false,
                navText: [
                    "<i class='fa fa-angle-left'> </i>",
                    "<i class='fa fa-angle-right'> </i>"],
                responsive: {
                    0: {
                        items: 1,
                    },
                    600: {
                        items: 3,
                    },
                    1000: {
                        items: 4,
                    }
                }
            })
            $('#team').owlCarousel({
                loop: true,
                margin: 15,
                responsiveClass: true,
                nav: false,
                navText: [
                    "<i class='fa fa-angle-left'> </i>",
                    "<i class='fa fa-angle-right'> </i>"],
                responsive: {
                    0: {
                        items: 1,
                    },
                    600: {
                        items: 2,
                    },
                    1000: {
                        items: 2,
                    }
                }
            })
                $(document).on("scroll", function(){
		if
      ($(document).scrollTop() > 100){
		  $("header").addClass("shrink");
		}
		else
		{
			$("header").removeClass("shrink");
		}
		
		
	});
            $('#portfolio').owlCarousel({
                loop: true,
                margin: 15,
                responsiveClass: true,
                nav: false,
                navText: [
                    "<i class='fa fa-angle-left'> </i>",
                    "<i class='fa fa-angle-right'> </i>"],
                responsive: {
                    0: {
                        items: 1,
                    },
                    600: {
                        items: 2,
                    },
                    1000: {
                        items: 2,
                    }
                }
            })
                $('#appslider').owlCarousel({
                            loop:true,
                            margin:15,
                            responsiveClass:true,
                                nav:false,
                                autoplay:true,
                            responsive:{
                                0:{
                                    items:1,
                                },
                                600:{
                                    items:1,
                                },
                                1000:{
                                    items:1,
                                }
                            }
                        })		

                
                $('#productscreens').owlCarousel({
                     loop: true,
                     margin: 15,
                     responsiveClass: true,
                     nav: true,
                     navText: [
                    "<i class='fa fa-angle-left'> </i>",
                    "<i class='fa fa-angle-right'> </i>"],
                responsive: {
                                 0: {
                                         items: 1,
                                         nav: false
                                    },
                                600: {
                                         items: 1,
                                     },
                                  1000: {
                                         items: 1,
                                        }
                                    }
                                })


                        $('.drawermenu').drawermenu({
                            speed: 400,
                            position: 'right'
                        });


$(function () {

    $('#auto-collapse-menu-demo').metisMenu();

});
            $('.drawermenu').drawermenu({
                speed: 400,
                position: 'right'
            });
                $(document).on('click', '#submit', function () {
        $('.post-wrapper .post:first-child .stem-overlay .icon').click();
    });
                
//            $('.arrow').click(function(e){
//                $(this).addClass('arrowOpen');
//            });
//            $('#auto-collapse-menu-demo').metisMenu({
//                preventDefault: true
//            }).on('shown.metisMenu', function(event) {
//                var myLink = $('li.dropdown.active').children('a');
//                var myHref = myLink.attr('href');
//                var iTag = myLink.children('i');
//                var arrowClicked = iTag.hasClass("arrowOpen");
//                if(!arrowClicked){
//                    window.location.href = myHref;
//                }
//            }).on('hidden.metisMenu', function(event) {
//                var liTag = $('li.dropdown');
//                liTag.each(function (){
//                    if(!$(this).hasClass('active')){
//                        var iTag = $(this).find('i');
//                        iTag.removeClass('arrowOpen');
//                    }
//                });
//            });
JS;

        $script = <<< JS
                $("#content-1").mCustomScrollbar({
                /* keyboard default options */
                keyboard: {
                    enable: true,
                    scrollType: "stepless",
                    scrollAmount: "auto",
                }
            });
JS;

        $view->registerJs($js, View::POS_READY);
        $view->registerJs($script, View::POS_LOAD);

        return parent::register($view);
    }

}
