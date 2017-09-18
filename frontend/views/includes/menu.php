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
    <div class="menu-logo"> <a href="index.html"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/logo2.png" alt=""> </a> </div>
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