<?php
/* @var $this \yii\web\View */
/* @var $content string */

use common\widgets\Alert;
use frontend\assets\AppAsset;
use frontend\assets\ThemeAsset;
use yeesoft\models\Menu;
use yeesoft\widgets\LanguageSelector;
use yeesoft\widgets\Nav as Navigation;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\helpers\Html;
use yii\widgets\Breadcrumbs;
use yeesoft\comment\widgets\RecentComments;

Yii::$app->assetManager->forceCopy = true;
AppAsset::register($this);
ThemeAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <?= $this->renderMetaTags() ?>
        <?php $this->head() ?>
    </head>
    <body id="main">
        <?php $this->beginBody() ?>
        <!-- Header Start-->
        <header>
            <div class="container-fluid">
                <div class="logo"> 
                    <a href="<?php echo Yii::$app->request->baseUrl?>">
                        <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/logo.png"  alt="">
                    </a>
                </div>
            </div>
            <div class="menu-right"> 
                <a for="drawer-toggle" href="javascript:void(0)"  class="hamburger drawer-toggle" id="hamburger"></a> 
            </div>
        </header>
        <!-- Header End-->

        <!-- Menu Start-->
        <div class="drawermenu">
            <div class="close-btn"> 
                <a href="javascript:void(0)" class="drawer-toggle"> 
                    <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/cross.png"  alt="">
                </a>
            </div>
            <div class="clearfix"></div>
            <div class="menu-logo"> <a href="index.html"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/logo2.png" alt=""> </a> </div>
            <div id="content-1" class="content">
                <div class="clearfix">
                    <aside class="sidebar">
                        <nav class="sidebar-nav">
                            <ul class="metismenu" id="auto-collapse-menu-demo">
                                <li> <a href="who-we-are.html"> Who We  Are </a> </li>
                                <li> <a href="what-we-do.html" aria-expanded="true"> <span class="sidebar-nav-item">What We Do </span> <i class="fa arrow"></i> </a>
                                    <ul aria-expanded="true">
                                        <li><a href="ui-ux-design.html">UI / UX Design</a></li>
                                        <li><a href="webdevelopment.html">Web Development</a></li>
                                        <li> <a href="digital-marketing.html">Digital Marketing</a> </li>
                                        <li> <a href="mobile-app.html">Mobile App Development</a> </li>
                                    </ul>
                                </li>
                                <li> <a href="#">Our Works</a></li>
                                <li> <a href="#"> Products</a></li>
                                <li> <a href="#">Platform</a></li>
                                <li> <a href="#">Testimonials</a> </li>
                                <li> <a href="#">Blog</a> </li>
                                <li> <a href="careers.html">Careers</a> </li>
                                <li> <a href="contactus.html">Contact </a> </li>

                                <!--<li> <a href="#" aria-expanded="false">Bootstrap <span class="fa arrow"></span></a>
                                  <ul aria-expanded="false">
                                    <li><a href="#">Forms</a></li>
                                    <li><a href="#">Tables</a></li>
                                    <li> <a href="#" aria-expanded="false">Carousel <span class="fa arrow"></span></a>
                                      <ul aria-expanded="false">
                                        <li><a href="#">Single Item</a></li>
                                        <li><a href="#">Multi item</a></li>
                                        <li><a href="#">Product</a></li>
                                      </ul>
                                    </li>
                                    <li><a href="#">Modals</a></li>
                                    <li> <a href="#" aria-expanded="false">Accordions<span class="fa plus-minus"></span></a>
                                      <ul aria-expanded="false">
                                        <li><a href="#">Accordion 1</a></li>
                                        <li><a href="#">Accordion 2</a></li>
                                        <li><a href="#">Accordion 3</a></li>
                                        <li><a href="#">Accordion 4</a></li>
                                      </ul>
                                    </li>
                                  </ul>
                                </li>-->
                            </ul>
                        </nav>
                    </aside>
                </div>
            </div>
            <div class="footer-social-link footer-social-link2">
                <div class="menu-contact"> <i class="fa fa-phone" aria-hidden="true"></i> 0452-4210515 , 9952870443 <br/>
                    <i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto: info@sumanastech.com ">info@sumanastech.com</a></div>
                <ul>
                    <li> <a href="#"> <i class="fa fa-facebook" aria-hidden="true"></i> </a></li>
                    <li> <a href="#"> <i class="fa fa-twitter" aria-hidden="true"></i> </a></li>
                    <li> <a href="#"> <i class="fa fa-linkedin" aria-hidden="true"></i> </a></li>
                    <li> <a href="#"> <i class="fa fa-youtube" aria-hidden="true"></i> </a></li>
                    <li> <a href="#"> <i class="fa fa-pinterest-p" aria-hidden="true"></i> </a></li>
                </ul>
            </div>
        </div>
        <!-- Menu End-->

        <!-- Home Page Wrapper Start -->
        <div id="fullpage">
            <?= $content ?>

            <!-- Footer Start -->
            <div class="inner-footer section section10" id="section10">
                <div class="container-fluid">
                    <div class="footer-contact-cont">
                        <div class="corner1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/corner1.png"  alt=""></div>
                        <div class="corner2"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/corner2.png"  alt=""></div>
                        <div class="corner3"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/corner3.png"  alt=""></div>
                        <div class="corner4"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/corner4.png"  alt=""></div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 footer-link">
                            <ul>
                                <li><a href="#"> Who we are </a></li>
                                <li><a href="#">What we do </a></li>
                                <li><a href="#"> Portfolio </a></li>
                                <li><a href="#"> Testimonials </a></li>
                                <li><a href="#"> Blog </a></li>
                                <li><a href="#">Careers </a></li>
                                <li><a href="#"> Contact</a></li>
                            </ul>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                                <p> <span> <i class="fa fa-map-marker" aria-hidden="true"></i> Address </span> </p>
                                <p> No:01, Gandhiji St,<br/>
                                    Rasi Towers, Near Aparna Enclave,<br/>
                                    Velmurgan Nagar, Bypass Road,<br/>
                                    Madurai – 625010. </p>
                            </div>
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                                <p> <span> <i class="fa fa-phone" aria-hidden="true"></i> Phone no </span> </p>
                                <p> +91 98947 25600 <br/>
                                    +91 98947 32541 <br/>
                                </p>
                            </div>
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                                <p> <span> <i class="fa fa-envelope" aria-hidden="true"></i> Email </span> </p>
                                <p> <a href="#"> info@sumanastech.com </a> </p>
                            </div>
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                                <p> <span> <i class="fa fa-bullhorn" aria-hidden="true"></i> Social Media </span> </p>
                                <p> <a href="#"> facebook</a> <br/>
                                    <a href="#"> twitter</a> <br/>
                                    <a href="#"> google plus</a><br/>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="copyrights"> copyrights reserved  &copy; sumanas technologies </div>
                </div>
            </div>
            <!-- Footer End -->
        </div>
        <!-- Home Page Wrapper End -->

        <div class="drawermenu-overlay"></div>
        <?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>