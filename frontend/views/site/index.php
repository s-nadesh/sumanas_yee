<?php

use frontend\components\DashboardClientsWidget;
use frontend\components\TeamWidget;
use frontend\components\WorksWidget;
use yeesoft\block\models\Block;
use yii\web\View;

/* @var $this View */

$this->title = 'Homepage';
?>

<div class="section " id="section0">
    <div class="section-arrow1"> <a  href="#" class="arrow2 bounce moveDown"> </a> </div>
    <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12">
        <div class="slider-cont1">
            <div class="corner1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/corner1.png" alt=""></div>
            <div class="corner2"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/corner2.png" alt=""></div>
            <div class="corner3"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/corner3.png" alt=""></div>
            <div class="corner4"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/corner4.png" alt=""></div>
            <div class="inner-slider">
                <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
                        <li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
                        <li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper For Slides -->
                    <div class="carousel-inner" role="listbox"> 
                        <!-- First Slide -->
                        <div class="item active"> 
                            <!-- Slide Background --> 
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slider1.png" alt=""  class="slide-image"/>
                            <div class="container">
                                <div class="row"> 
                                    <!-- Slide Text Layer -->
                                    <div class="slide1"> 
                                        <div class="slide-text slide_style_left">
                                            <h1 data-animation="animated zoomInRight">
                                                FOCUS ON<br/>
                                                FUTURE<br/>
                                                <span> TECHNOLOGY </span><br/> 
                                                <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/line.jpg"  alt="">
                                            </h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End of Slide --> 

                        <!-- Second Slide -->
                        <div class="item "> 
                            <!-- Slide Background --> 
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slider2.png" alt=""  class="slide-image"/>
                            <div class="container">
                                <div class="row"> 
                                    <!-- Slide Text Layer -->
                                    <div class="slide-text slide_style_left">
                                        <h1 data-animation="animated zoomInRight">
                                            One of the  <br> 
                                            worlds largest
                                            white label <br/> 
                                            <span> IT products & services provider </span><br/> 
                                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/line.jpg"  alt="">
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End of Slide --> 

                        <!-- Third Slide -->
                        <div class="item "> 
                            <!-- Slide Background --> 
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slider3.png" alt=""  class="slide-image"/>
                            <div class="container">
                                <div class="row"> 
                                    <!-- Slide Text Layer -->
                                    <div class="slide-text slide_style_left">
                                        <h1 data-animation="animated zoomInRight">
                                            600+ satisfied clients with <br/>  
                                            over 2000+ projects & tasks  <br/> 
                                            <span> successfully completed</span><br/> 
                                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/line.jpg"  alt="">
                                        </h1>
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
                    <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next"> <span class="fa fa-angle-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> 
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section1" id="section1">
    <div class="container-fluid">
        <div class="slogan-img1"> 
            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slogan-img1.png"  alt="">
        </div>
        <div class="slogan1"> 
            <span> WHAT </span> <br/>
            MAKES US BETTER? 
        </div>
        <div class="arrow1"> 
            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt="">
        </div>
        <div class="question-cont">
            <div class="question1"> Curious to know? !</div>
        </div>
        <a href="#" class="moveDown">
            <div class="mouse-scroll">
                <div> 
                    <span class="down-arrow-1"></span> 
                    <span class="down-arrow-2"></span> 
                    <span class="down-arrow-3"></span> 
                </div>
            </div>
        </a> 
    </div>
</div>

<div class="section section2" id="section2">
    <div class="section-arrow1"> <a  href="#" class="arrow2 bounce moveDown"> </a> </div>
    <div class="container-fluid">
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <h2> <span> OUR </span> SERVICES </h2>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-8 col-lg-offset-1">
            <div class="row">
                <?php echo Block::getHtml('mobile-app-development'); ?>
                <div class="col-xs-12 col-sm-4 col-lg-4 col-lg-4  sevice-part ">
                    <div class="row">
                        <?php echo Block::getHtml('ui-ux-design'); ?> 
                        <?php echo Block::getHtml('digital-marketing'); ?> 
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-lg-4 col-lg-4  sevice-part ">
                    <div class="row">
                        <?php echo Block::getHtml('website-development'); ?> 
                        <?php echo Block::getHtml('dataanalytics'); ?> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section3" id="section3">
    <div class="container-fluid">
        <div class="slogan1 slogan2" > 
            <span> WE ARE </span> <br/>
            WHO ARE BECAUSE OF OUR 
        </div>
        <div class="arrow1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt=""></div>
        <div class="question-cont">
            <div class="question1"> Now you are definitely curious to know! </div>
        </div>
        <a href="#"  class="moveDown">
            <div class="mouse-scroll">
                <div> 
                    <span class="down-arrow-1"></span> 
                    <span class="down-arrow-2"></span> 
                    <span class="down-arrow-3"></span> 
                </div>
            </div>
        </a> 
    </div>
</div>

<div class="section section4" id="section4">
    <div class="section-arrow1"> <a  href="#" class="arrow2 bounce moveDown"> </a> </div>
    <div class="container-fluid">
        <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12">
            <h2> <span> OUR </span> Clients</h2>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 owl-theme"> 
            <!-- Set up your HTML -->
            <div class="row">
                <div class="owl-carousel hover-demo " id="clients-carousel">
                    <?= DashboardClientsWidget::widget(); ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section5" id="section5">
    <div class="container-fluid">
        <div class="slogan1 slogan3" > 
            <span> OUR CLIENTS</span> <br/>
            LOVE US FOR OUR? 
        </div>
        <div class="arrow1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt=""></div>
        <div class="question-cont">
            <div class="question1"> You know what? </div>
        </div>
        <a href="#"  class="moveDown">
            <div class="mouse-scroll">
                <div> 
                    <span class="down-arrow-1"></span> 
                    <span class="down-arrow-2"></span> 
                    <span class="down-arrow-3"></span> 
                </div>
            </div>
        </a> 
    </div>
</div>

<div class="section section6" id="section6">
    <div class="section-arrow1"> <a  href="#" class="arrow2 bounce moveDown"> </a> </div>
    <div class="container-fluid">
        <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
            <h2> <span> OUR </span> Works</h2>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 owl-theme"> 
                <!-- Set up your HTML -->
                <div class="owl-carousel hover-demo " id="portfolio">
                    <?= WorksWidget::widget(); ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section7" id="section7">
    <div class="container-fluid">
        <div class="slogan1 slogan4" > 
            <span> OUR WORK</span> <br/>
            IS SO AWESOME BECAUSE OF OUR 
        </div>
        <div class="arrow1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt=""></div>
        <div class="question-cont">
            <div class="question1"> You'll be excited to know! </div>
        </div>
        <a href="#" class="moveDown">
            <div class="mouse-scroll">
                <div> 
                    <span class="down-arrow-1"></span> 
                    <span class="down-arrow-2"></span> 
                    <span class="down-arrow-3"></span> 
                </div>
            </div>
        </a> 
    </div>
</div>

<!-- Our Team Section -->
<div class="section section8" id="section8">
    <div class="section-arrow1"> 
        <a  href="#" class="arrow2 bounce moveDown"> </a> 
    </div>
    <div class="container-fluid">
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
            <h2> <span> OUR </span> Team</h2>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-7">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 owl-theme"> 
                <!-- Set up your HTML -->
                <div class="owl-carousel hover-demo " id="team">
                    <?= TeamWidget::widget() ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section9" id="section9">
    <div class="container-fluid">
        <div class="slogan-img1"> 
            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slogan-img1.png"  alt="">
        </div>
        <div class="slogan1" > 
            <span> WANT TO </span> <br/>
            KNOW MORE 
        </div>
        <div class="arrow1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt=""></div>
        <div class="question-cont">
            <div class="question1"> We know that you hadn't had enough! </div>
        </div>
        <a href="#" class="moveDown">
            <div class="mouse-scroll">
                <div> 
                    <span class="down-arrow-1"></span> 
                    <span class="down-arrow-2"></span> 
                    <span class="down-arrow-3"></span> 
                </div>
            </div>
        </a> 
    </div>
</div>