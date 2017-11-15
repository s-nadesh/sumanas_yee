<?php

use frontend\components\ClientsWidget;
use yeesoft\block\models\Block;
use yii\web\View;

/* @var $this View */

$this->title = 'Homepage';
?>
<div class="home-slider">
    <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" > 

        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
            <li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
            <li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper For Slides -->
        <div class="carousel-inner" role="listbox"> 

            <!-- Third Slide -->
            <div class="item active"> 

                <!-- Slide Background --> 
                <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slider.jpg" alt=""  class="slide-image"/>
                <div class="container">
                    <div class="row"> 
                        <!-- Slide Text Layer -->
                        <div class="slide1">
                            <div class="slide-text slide_style_left">
                                <h1 data-animation="animated zoomInRight">It's time to capture the spotlight <br/>
                                    <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/line.jpg"  alt=""></h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of Slide --> 

            <!-- Third Slide -->
            <div class="item "> 

                <!-- Slide Background --> 
                <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slider.jpg" alt=""  class="slide-image"/>
                <div class="container">
                    <div class="row"> 
                        <!-- Slide Text Layer -->
                        <div class="slide-text slide_style_left">
                            <h1 data-animation="animated zoomInRight">It's time to unveil the future<br/>

                                <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/line.jpg"  alt=""></h1>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of Slide --> 

            <!-- Third Slide -->
            <div class="item "> 

                <!-- Slide Background --> 
                <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slider.jpg" alt=""  class="slide-image"/>
                <div class="container">
                    <div class="row"> 
                        <!-- Slide Text Layer -->
                        <div class="slide-text slide_style_left">
                            <h1 data-animation="animated zoomInRight">It's time to 'become visible<br/>
                                <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/line.jpg"  alt=""></h1>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of Slide --> 

        </div>
        <!-- End of Wrapper For Slides --> 

        <!-- Left Control --> 
        <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev"> <span class="fa fa-angle-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> 

        <!-- Right Control --> 
        <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next"> <span class="fa fa-angle-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
</div>
<div class="home-servicec-cont">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 services-main-heading ">
                <h2> Our Services </h2>
            </div>
            <?php echo Block::getHtml('website-development'); ?> 
            <?php echo Block::getHtml('ui-ux-design'); ?> 
            <?php echo Block::getHtml('mobile-app-development'); ?>
            <div class="clearfix"></div>
            <?php echo Block::getHtml('digital-marketing'); ?> 
            <?php echo Block::getHtml('dataanalytics'); ?> 
            <?php echo Block::getHtml('products'); ?> 
        </div>
    </div>
</div>
<div class="statistics">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 statistics1">
                <p> <i class="fa fa-calendar" aria-hidden="true"></i> </p>
                <p> <span> 7+</span> </p>
                <p> Years of Experience </p>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 statistics1">
                <p> <i class="fa fa-pencil-square-o" aria-hidden="true"></i> </p>
                <p> <span> 873 </span> </p>
                <p> Project Completed </p>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 statistics1">
                <p> <i class="fa fa-code" aria-hidden="true"></i> </p>
                <p> <span> 452 </span> </p>
                <p>Website  Launched </p>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 statistics1">
                <p> <i class="fa fa-users" aria-hidden="true"></i> </p>
                <p> <span> 600+ </span> </p>
                <p>Satisfied Client </p>
            </div>
        </div>
    </div>
</div>
<div class="home-testimonial-cont">


    <div class="container-fluid"> 

        <div class="hometestimonial-bg"> 

            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 hometesti-heading">  
                    <p> Happy Clients <span> About Us </span>  </p>  
                    <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/testimonial-bg.png"  alt="">
                </div>
                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
                    <div class="home-testimonail-slider"> 
                        <?= ClientsWidget::widget(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>