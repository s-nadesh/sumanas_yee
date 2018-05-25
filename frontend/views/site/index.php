<?php

use frontend\components\ClientsWidget;
use yii\helpers\Url;
use yii\web\View;
use yeesoft\block\models\Block;

/* @var $this View */

$this->title = 'Homepage';
?>
<div class="home-slider text-center">
  
  <div class="container-fluid">
  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 services-main-heading">
        <h2 class="bg-n"> Your business needs an upgrade. 
Lets make your Digital Sales Funnel Awesome! </h2>

<a href="<?php echo Url::toRoute('/contact-sumanas') ?>" class="btn btn2"> Request Quote <i class="fa fa-angle-right"></i> </a>
      </div>

  
  <div class="banner-image"><img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/banner.png"   alt=""> </div>
  
  </div>
  
  
</div>

<div class="home-servicec-cont">
  <div class="container-fluid">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 services-main-heading ">
        <h2> Delivering Fresh Digital Experiences </h2>
      </div>
      <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 col-md-offset-2 col-lg-offset-2 text-center"> We are one of the worlds largest white label IT products and services company in India with 10+ years of experience in product development</div>
      
      
      <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 services ">
      
        <p> <a href="#"><img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/hicon1.png" alt=""></a></p>
          <p class="services-heading">Developement</p>
        <p class="services-txt">Open source custom development services, Android 
& iOS development, We are experts in custom Web app development over PHP frameworks </p>
        <!--<p class="arrow"> <a href="#" class="btn explore-btn"> Explore  <i class="fa fa-arrow-right"></i> </a></p>-->
      </div>
      
      
      <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 services ">
      
        <p> <a href="#"><img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/hicon2.png" alt=""></a></p>
          <p class="services-heading">Networking</p>
        <p class="services-txt">AWS , Azure, Rackspace, Google cloud, Digital ocean & other cloud services. Shared & dedicated hosting, Migration & Support, Network virtualization </p>
        <!--<p class="arrow"> <a href="#" class="btn explore-btn"> Explore  <i class="fa fa-arrow-right"></i>  </a></p>-->
      </div>
      
      
      
      
      <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 services ">
      
        <p> <a href="#"><img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/hicon3.png" alt=""></a></p>
          <p class="services-heading">Implementation</p>
        <p class="services-txt">Salesforce, CRM, ERP on cloud, Custom back-end functions, Analytics tools integration, Tracking and monitoring code implementation</p>
        <!--<p class="arrow"> <a href="#" class="btn explore-btn"> Explore  <i class="fa fa-arrow-right"></i>  </a></p>-->
      </div>
      
      
      
      <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 services ">
      
        <p> <a href="#"><img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/hicon4.png" alt=""></a></p>
          <p class="services-heading">Automation</p>
        <p class="services-txt">Business automation, Testing automation, Remote access setup, Automated threat detection & malware removal, Custom Add-on's, plugins, extensions</p>
        <!--<p class="arrow"> <a href="#" class="btn explore-btn"> Explore  <i class="fa fa-arrow-right"></i>  </a></p>-->
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
<div class="statistics">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 statistics1">
                <p> <i class="fa fa-calendar" aria-hidden="true"></i> </p>
                <p> <span> 10+</span> </p>
                <p> Years of Experience </p>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 statistics1">
                <p> <i class="fa fa-pencil-square-o" aria-hidden="true"></i> </p>
                <p> <span> 1074 </span> </p>
                <p> Projects Completed </p>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 statistics1">
                <p> <i class="fa fa-code" aria-hidden="true"></i> </p>
                <p> <span> 752 </span> </p>
                <p>Websites  Launched </p>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 statistics1">
                <p> <i class="fa fa-users" aria-hidden="true"></i> </p>
                <p> <span> 800+ </span> </p>
                <p>Satisfied Clients </p>
            </div>
        </div>
    </div>
</div>
