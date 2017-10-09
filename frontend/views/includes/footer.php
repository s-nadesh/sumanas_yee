<?php
/* @var $this View */
/* @var $content string */

use yeesoft\models\Menu;

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
                    <?php foreach ($footer as $row) { ?>
                        <li> <a href="<?php echo $row['url']['0'] ?>"><?php echo $row['label'] ?></a></li>
                    <?php } ?>
                </ul>
                
                <p> <span> Technologies </span> </p>
                <ul> 
                    <?php foreach ($footer_tech as $tech) { ?>
                        <li> <a href="<?php echo $tech['url']['0'] ?>"><?php echo $tech['label'] ?></a></li>
                    <?php } ?>
                </ul>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont"> 
                <p> <span> What We Do </span> </p>
                <ul> 
                    <?php foreach ($footer_serv as $serv) { ?>
                        <li><a href="<?php echo $serv['url']['0'] ?>"><?php echo $serv['label'] ?></a> </li>
                    <?php } ?>
                </ul>
                <p> <span> Platform </span> </p>
                <ul> 
                    <?php foreach ($footer_platform as $plat) { ?>
                        <li><a href="<?php echo $plat['url']['0'] ?>"><?php echo $plat['label'] ?></a> </li>
                    <?php } ?>
                </ul>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                <p> <span> <i class="fa fa-phone" aria-hidden="true"></i> Phone no </span> </p>
                <p> 
                    <?php echo Yii::$app->settings->get('general.mobile') ?> <br/>
                    <?php echo Yii::$app->settings->get('general.alt_phone') ?> <br/>
                </p>

                <p> <span> <i class="fa fa-envelope" aria-hidden="true"></i> Email </span> </p>
                <p><a href="mailto:<?php echo Yii::$app->settings->get('general.email') ?>"> <?php echo Yii::$app->settings->get('general.email') ?></a> </p>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                <p> <span> <i class="fa fa-map-marker" aria-hidden="true"></i> Address </span> </p>
                <p>  <?php echo nl2br(Yii::$app->settings->get('general.address')) ?> </p>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 footer-cont">
                <p> <span> <i class="fa fa-bullhorn" aria-hidden="true"></i> Social Media </span> </p>
                <?php if (Yii::$app->settings->get('general.facebook')) { ?>
                    <p> 
                        <a target="_blank" href="<?php echo Yii::$app->settings->get('general.facebook') ?>"> 
                            <i class="fa fa-facebook" aria-hidden="true"></i> - facebook
                        </a> 
                        <br/> 
                        <?php
                    }
                    if (Yii::$app->settings->get('general.twitter')) {
                        ?>
                        <a target="_blank" href="<?php echo Yii::$app->settings->get('general.twitter') ?>">
                            <i class="fa fa-twitter" aria-hidden="true"></i>  - twitter
                        </a> 
                        <br/>
                        <?php
                    }
                    if (Yii::$app->settings->get('general.gplus')) {
                        ?>
                        <a target="_blank" href="<?php echo Yii::$app->settings->get('general.gplus') ?>">
                            <i class="fa fa-google-plus" aria-hidden="true"></i> -   google plus
                        </a>
                        <br/>
                        <?php
                    }
                    if (Yii::$app->settings->get('general.pinterest')) {
                        ?>
                        <a target="_blank" href="<?php echo Yii::$app->settings->get('general.pinterest') ?>">
                            <i class="fa fa-pinterest-p" aria-hidden="true"></i> -   Pinterest
                        </a><br/>
                        <?php
                    }
                    if (Yii::$app->settings->get('general.linkedin')) {
                        ?>
                        <a target="_blank" href="<?php echo Yii::$app->settings->get('general.linkedin') ?>">
                            <i class="fa fa-linkedin" aria-hidden="true"></i> -   LinkedIn
                        </a><br/>
                    <?php } ?>
                </p>
            </div>
        </div>
    </div>
    <div class="copyrights"> copyrights reserved  &copy; sumanas technologies </div>
</div>