<?php
/* @var $this \yii\web\View */
/* @var $content string */

use yeesoft\models\Menu;
use yeesoft\widgets\LanguageSelector;
use yii\bootstrap\Nav;
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
                    <!--                            <ul class="metismenu" id="auto-collapse-menu-demo">
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
                    
                                                    <li> <a href="#" aria-expanded="false">Bootstrap <span class="fa arrow"></span></a>
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
                                                    </li>
                                                </ul>-->

                    <!--<div class="wrap">-->
                    <?php
//                            NavBar::begin([
//                                'brandLabel' => Yii::$app->settings->get('general.title', 'Yee Site', Yii::$app->language),
//                                'brandUrl' => Yii::$app->homeUrl,
//                                'options' => [
//                                    'class' => 'metismenu', 'id' => 'auto-collapse-menu-demo',
//                                ],
//                            ]);
                    $menuItems = Menu::getMenuItems('main-menu');
                    if (Yii::$app->user->isGuest) {
//                                    $menuItems[] = ['label' => Yii::t('yee/auth', 'Signup'), 'url' => \yii\helpers\Url::to(['/auth/default/signup'])];
                        $menuItems[] = ['label' => Yii::t('yee/auth', 'Login'), 'url' => ['/auth/default/login']];
                    } else {
                        $menuItems[] = [
                            'label' => Yii::$app->user->identity->username,
                            'url' => ['/auth/default/profile'],
                        ];

                        $menuItems[] = [
                            'label' => Yii::t('yee/auth', 'Logout'),
                            'url' => ['/auth/default/logout', 'language' => false],
                            'linkOptions' => ['data-method' => 'post']
                        ];
                    }
                    echo Nav::widget([
                        'encodeLabels' => false,
//                                    'options' => ['class' => 'navbar-nav navbar-right'],
                        'items' => $menuItems,
                    ]);

                    echo LanguageSelector::widget(['display' => 'label', 'view' => 'pills']);

//                            NavBar::end();
                    ?>
                    <?php
                    $menuItemsKey = '__mainMenuItems' . Yii::$app->language;
                    if (!$menuItems = Yii::$app->cache->get($menuItemsKey)) {
                        $menuItems = Menu::getMenuItems('main-menu');
                        Yii::$app->cache->set($menuItemsKey, $menuItems, 3600);
                    }

//                            echo Navigation::widget([
//                                'encodeLabels' => false,
//                                'items' => $menuItems,
//                                'options' => [
//                                        ['class' => 'nav nav-pills nav-stacked'],
//                                        ['class' => 'nav nav-second-level'],
//                                        ['class' => 'nav nav-third-level']
//                                ],
//                            ]);
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