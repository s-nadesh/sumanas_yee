<?php
/* @var $this View */
/* @var $content string */

use yeesoft\models\Menu;
use yeesoft\widgets\Nav;
//use yeesoft\widgets\Menu;
?>
<div class="container-fluid">
    <div class="footer-contact-cont">
        <div class="corner1"> <img src="/themes/st_theme/images/corner1.png"  alt=""></div>
        <div class="corner2"> <img src="/themes/st_theme/images/corner2.png"  alt=""></div>
        <div class="corner3"> <img src="/themes/st_theme/images/corner3.png"  alt=""></div>
        <div class="corner4"> <img src="/themes/st_theme/images/corner4.png"  alt=""></div>

        <div class="row">
            <!--                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont"> 
                                        <p> <span> Main Links </span> </p>
                                        <ul> 
                                            <li><a href="#">Who We Are</a></li>
                                            <li><a href="#">Our Works</a></li>
                                            <li><a href="#">Products</a></li>
                                            <li><a href="#">Blog</a></li>
                                            <li><a href="#">Careers</a></li>
                                            <li><a href="#">Contact</a></li>
                                        </ul>
                        
                        
                                        <p> <span> Technologies </span> </p>
                                        <ul> 
                        
                        
                                            <li><a href="#">Cloud</a></li>
                                            <li><a href="#">Open Source</a></li>
                                        </ul>
                        
                                    </div>-->
            <?=
            Nav::widget([
                'encodeLabels' => false,
//                'dropDownCaret' => '<i class="fa arrow"></i>',
                'options' => [
//                        ['class' => 'metismenu', 'id' => 'auto-collapse-menu-demo'],
                        ['class' => ''],
                        ['class' => '']
                ],
                'items' => Menu::getMenuItems('footer_id'),
            ])
            ?>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont"> 
                <p> <span> What We Do </span> </p>
                <ul> 
                    <li><a href="#">  UI / UX Design  </a></li>
                    <li><a href="#"> Web Development </a></li>
                    <li><a href="#"> Digital Marketing  </a></li>
                    <li><a href="#"> Mobile Application  </a></li>

                </ul>
                <p> <span> Platform </span> </p>
                <ul> 


                    <li><a href="#">CMS</a></li>
                    <li><a href="#">CRM</a></li>
                    <li><a href="#">e-commerce</a></li>
                </ul>

            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                <p> <span> <i class="fa fa-phone" aria-hidden="true"></i> Phone no </span> </p>
                <p> +91 98947 25600 <br/>
                    +91 98947 32541 <br/>
                </p>

                <p> <span> <i class="fa fa-envelope" aria-hidden="true"></i> Email </span> </p>
                <p> <a href="#"> info@sumanastech.com </a> </p>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                <p> <span> <i class="fa fa-map-marker" aria-hidden="true"></i> Address </span> </p>
                <p> No:01, Gandhiji St,<br/>
                    Rasi Towers, Near Aparna Enclave,<br/>
                    Velmurgan Nagar, Bypass Road,<br/>
                    Madurai – 625010. </p>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">

            </div>
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                <p> <span> <i class="fa fa-bullhorn" aria-hidden="true"></i> Social Media </span> </p>
                <p> <a href="#"> <i class="fa fa-facebook" aria-hidden="true"></i> - facebook</a> <br/>
                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i>  - twitter</a> <br/>
                    <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i> -   google plus</a><br/>
                </p>
            </div>
        </div>
    </div>
    <div class="copyrights"> copyrights reserved  &copy; sumanas technologies </div>
</div>