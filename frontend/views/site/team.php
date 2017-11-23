<?php

use frontend\components\TeamWidget;
use yii\helpers\Html;
?>
<div class="inner-page-heading webdev-heading ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h1>Meet Our Team</h1>
                <span>The core minds that make it work.</span> </div>
        </div>
    </div>
</div>
<div class="clearfix"> </div>
<div class="web-development-cont">
    <div class="section header">
        <div class="section-inner">
            <div class="master-head">
                <p>" Our people count will make the scroll...roll! <br/>
                    We make it easier for you...like always! " </p>
            </div>
        </div>
        <!-- section-inner --> 
    </div>
    <!-- header -->

    <div class="section ourteam-content">
        <div class="container">
            <div class="row"> 
                <?= TeamWidget::widget(); ?>
                <div class=" col-xs-6 col-sm-6 col-md-3 col-lg-3 team-wrap">
                    <div class="team-member text-center">
                        <div class="team-img"> <img src="/themes/st_theme/images/newteam.jpg" alt="">
                            <div class="overlay">
                                <div class="team-details text-center">
                                    <h4> <i class="fa fa-user-plus" aria-hidden="true"></i> <br/>
                                        <?= Html::a('Wish to join the league? <br/>
                                        Apply now!', ['careers']) ?> </h4>
                                </div>
                            </div>
                        </div>
                        <div class="team-name">
                            <h6 class="team-title"> Your Name </h6>
                            <span> Could be next...</span> </div>
                    </div>
                </div>
                <!-- end team member --> 

            </div>
        </div>

        <!-- section-inner -->
        <div class="testimonials-bg">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <h5> Happy times @ Sumanas </h5>
                    </div>
                    <div class="col-md-8 col-md-offset-2"> </div>
                </div>
            </div>
        </div>
    </div>
</div>