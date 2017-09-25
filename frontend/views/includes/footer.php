<?php
/* @var $this View */
/* @var $content string */

use yeesoft\models\Menu;

//use yeesoft\widgets\Menu;
$footer = Menu::getMenuItems('footer-main');
$footer_tech = Menu::getMenuItems('footer-tech');
$footer_serv = Menu::getMenuItems('footer-serv');
$footer_platform = Menu::getMenuItems('footer-platform');
?>
<div class="container-fluid">
    <div class="footer-contact-cont">
        <div class="corner1"> <img src="/themes/st_theme/images/corner1.png"  alt=""></div>
        <div class="corner2"> <img src="/themes/st_theme/images/corner2.png"  alt=""></div>
        <div class="corner3"> <img src="/themes/st_theme/images/corner3.png"  alt=""></div>
        <div class="corner4"> <img src="/themes/st_theme/images/corner4.png"  alt=""></div>

        <div class="row">
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont"> 
                <p> <span> Main Links </span> </p>
                <ul>
                    <?php
                    foreach ($footer as $row) {
                        ?>
                    <li> <a href="<?php echo $row['url']['0'] ?>"><?php echo $row['label'] ?></a></li>
                        <?php
                    }
                    ?>
                </ul>

                <p> <span> Technologies </span> </p>
                <ul> 
                    <?php
                    foreach ($footer_tech as $tech) {
                        ?>
                    <li> <a href="<?php echo $tech['url']['0'] ?>"><?php echo $tech['label'] ?></a></li>
                        <?php
                    }
                    ?>
                </ul>

            </div>


            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont"> 
                <p> <span> What We Do </span> </p>
                <ul> 
                    <?php
                    foreach ($footer_serv as $serv) {
                        ?>
                    <li><a href="<?php echo $serv['url']['0'] ?>"><?php echo $serv['label'] ?></a> </li>
                        <?php
                    }
                    ?>

                </ul>
                <p> <span> Platform </span> </p>
                <ul> 
                    <?php
                    foreach ($footer_platform as $plat) {
                        ?>
                    <li><a href="<?php echo $plat['url']['0'] ?>"><?php echo $plat['label'] ?></a> </li>
                        <?php
                    }
                    ?>
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

            <!--            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
            
                        </div>-->
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