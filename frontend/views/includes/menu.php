<?php
/* @var $this View */
/* @var $content string */

use yeesoft\models\Menu;
use yeesoft\widgets\Nav;
use yii\helpers\ArrayHelper;
use yii\web\View;
?>

<div class="drawermenu">
    <div class="close-btn"> 
        <a href="javascript:void(0)" class="drawer-toggle"> 
            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/cross.png"  alt="cross">
        </a>
    </div>
    <div class="clearfix"></div>
    <div class="menu-logo"> 
        <a href="<?php echo Yii::$app->homeUrl ?>"> 
            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/logo2.png" alt="Sumanas Technologies"> 
        </a> 
    </div>
    <div id="content-1" class="content">
        <div class="clearfix">
            <aside class="sidebar">
                <nav class="sidebar-nav">
                    <?php
                    $menus = Menu::getMenuItems('main-menu');
                    foreach ($menus as $key => $menu) {
                        if ($menu['label'] == 'Contact' && Yii::$app->request->url == '/contact-sumanas') {
                            $menus[$key]['active'] = 'site/contact';
                        }
                    }
//                     echo '<pre>';
//                    print_r($menus);
//                    exit;
                    ?>
                    <?=
                    Nav::widget([
                        'encodeLabels' => false,
                        'dropDownCaret' => '<i class="fa arrow"></i>',
                        'activateItems' => true,
                        'activateParents' => true,
                        'options' => [
                                ['class' => 'metismenu', 'id' => 'auto-collapse-menu-demo'],
                                ['class' => ''],
                                ['class' => '']
                        ],
                        'items' => $menus,
                    ])
                    ?>
                </nav>
            </aside>
        </div>
    </div>
    <div class="footer-social-link footer-social-link2">
        <div class="menu-contact"> 
            <i class="fa fa-phone" aria-hidden="true"></i> 
            <?php echo Yii::$app->settings->get('general.mobile') ?>,
            <?php echo Yii::$app->settings->get('general.alt_phone') ?> <br/>
            <i class="fa fa-envelope-o" aria-hidden="true"></i> 
            <a href="mailto: <?php echo Yii::$app->settings->get('general.email') ?>">
                <?php echo Yii::$app->settings->get('general.email') ?>
            </a>
        </div>
        <ul>
            <?php if (Yii::$app->settings->get('general.facebook')) { ?> 
                <li>
                    <a href="<?php echo Yii::$app->settings->get('general.facebook') ?>"> 
                        <i class="fa fa-facebook" aria-hidden="true"></i>
                    </a> 
                </li>
            <?php } ?>
            <?php if (Yii::$app->settings->get('general.twitter')) { ?> 
                <li>
                    <a href="<?php echo Yii::$app->settings->get('general.twitter') ?>">
                        <i class="fa fa-twitter" aria-hidden="true"></i>
                    </a> 
                </li>
            <?php } ?>
            <?php if (Yii::$app->settings->get('general.linkedin')) { ?> 
                <li>
                    <a href="<?php echo Yii::$app->settings->get('general.linkedin') ?>"> 
                        <i class="fa fa-linkedin" aria-hidden="true"></i>
                    </a> 
                </li>
            <?php } ?>
            <?php if (Yii::$app->settings->get('general.gplus')) { ?> 
                <li>
                    <a href="<?php echo Yii::$app->settings->get('general.gplus') ?>"> 
                        <i class="fa fa-google-plus" aria-hidden="true"></i>
                    </a> 
                </li>
            <?php } ?>
            <?php if (Yii::$app->settings->get('general.pinterest')) { ?> 
                <li>
                    <a href="<?php echo Yii::$app->settings->get('general.pinterest') ?>"> 
                        <i class="fa fa-pinterest" aria-hidden="true"></i>
                    </a> 
                </li>
            <?php } ?>
        </ul>
    </div>
</div>