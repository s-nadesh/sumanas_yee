<?php
/* @var $this \yii\web\View */
/* @var $content string */

use frontend\assets\AppAsset;
use frontend\assets\ThemeAsset;
use yii\helpers\Html;
use yeesoft\block\models\Block;
use frontend\actions\PageAction;
use yeesoft\page\models\Page;

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
    <body class="innerpage">
        <?php $this->beginBody() ?>
        <!-- Header Start-->
        <?php echo $this->render('@frontend/views/includes/header'); ?>
        <!-- Header End-->

        <!-- Menu Start-->
        <?php echo $this->render('@frontend/views/includes/menu'); ?>
        <!-- Menu End-->

        <!-- Page Wrapper Start -->
        <div class="innerpage">
            <?= $content ?>
            <div class="testimonials-bg">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <h5> Client Speaks </h5>
                        </div>
                        <div class="col-md-8 col-md-offset-2">
                            <div class="quote"><i class="fa fa-quote-left fa-2x"></i></div>
                            <div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="7000"> 
                                <!-- Carousel indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#fade-quote-carousel" data-slide-to="0"></li>
                                    <li data-target="#fade-quote-carousel" data-slide-to="1"></li>
                                    <li data-target="#fade-quote-carousel" data-slide-to="2" class="active"></li>
                                    <li data-target="#fade-quote-carousel" data-slide-to="3"></li>
                                    <li data-target="#fade-quote-carousel" data-slide-to="4"></li>
                                </ol>
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                    <?php  ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <?php echo Block::getHtml('get_in_touch'); ?>
                <!-- Footer Start -->
                <div class="section section10" id="section10">
                    <?php echo $this->render('@frontend/views/includes/footer'); ?>
                </div>
                <!-- Footer End -->
            </div>
            <!-- Page Wrapper End -->

            <div class="drawermenu-overlay"></div>
            <?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>