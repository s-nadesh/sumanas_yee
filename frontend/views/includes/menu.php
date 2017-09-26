<?php
/* @var $this View */
/* @var $content string */

use yeesoft\models\Menu;
use yeesoft\widgets\Nav;
use yii\web\View;
?>

<div class="drawermenu">
    <div class="close-btn"> 
        <a href="javascript:void(0)" class="drawer-toggle"> 
            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/cross.png"  alt="">
        </a>
    </div>
    <div class="clearfix"></div>
    <div class="menu-logo"> <a href="<?php echo Yii::$app->homeUrl ?>"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/logo2.png" alt=""> </a> </div>
    <div id="content-1" class="content">
        <div class="clearfix">
            <aside class="sidebar">
                <nav class="sidebar-nav">
                    <?=
                    Nav::widget([
                        'encodeLabels' => false,
                        'dropDownCaret' => '<i class="fa arrow"></i>',
                        'options' => [
                                ['class' => 'metismenu', 'id' => 'auto-collapse-menu-demo'],
                                ['class' => ''],
                                ['class' => '']
                        ],
                        'items' => Menu::getMenuItems('main-menu'),
                    ])
                    ?>
                </nav>
            </aside>
        </div>
    </div>
    <div class="footer-social-link footer-social-link2">
        <div class="menu-contact"> <i class="fa fa-phone" aria-hidden="true"></i> <?php echo Yii::$app->settings->get('general.mobile') ?>,<?php echo Yii::$app->settings->get('general.alt_phone') ?> <br/>
            <i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto: info@sumanastech.com ">info@sumanastech.com</a></div>
        <ul>
                <?php if (Yii::$app->settings->get('general.facebook')) { ?> <li>
                    <a href="<?php echo Yii::$app->settings->get('general.facebook') ?>"> <i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
            <?php } ?>
             <?php
                if (Yii::$app->settings->get('general.twitter')) { 
                    ?> <li>
                    <a href="<?php echo Yii::$app->settings->get('general.twitter') ?>"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
            <?php } ?>
                <?php if (Yii::$app->settings->get('general.linkedin')) { ?> <li>
                    <a href="<?php echo Yii::$app->settings->get('general.linkedin') ?>"> <i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
            <?php } ?>
                <?php if (Yii::$app->settings->get('general.gplus')) { ?> <li>
                    <a href="<?php echo Yii::$app->settings->get('general.gplus') ?>"> <i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
            <?php } ?>
                <?php if (Yii::$app->settings->get('general.pinterest')) { ?> <li>
                    <a href="<?php echo Yii::$app->settings->get('general.pinterest') ?>"> <i class="fa fa-pinterest" aria-hidden="true"></i></a> </li>
                    <?php } ?>
        </ul>
    </div>
</div>