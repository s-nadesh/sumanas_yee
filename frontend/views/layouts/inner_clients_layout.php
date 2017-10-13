<?php
/* @var $this \yii\web\View */
/* @var $content string */

use frontend\assets\AppAsset;
use frontend\assets\ThemeAsset;
use yii\helpers\Html;
use yeesoft\block\models\Block;
use frontend\actions\PageAction;
use yeesoft\page\models\Page;
use frontend\components\ClientsWidget;

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
        <!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window,document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1924834804441583');
fbq('track', 'PageView');
fbq('track', 'Lead');
</script>
<noscript>
<img height="1" width="1"
src="https://www.facebook.com/tr?id=1924834804441583&ev=PageView
&noscript=1"/>
</noscript>
<!-- End Facebook Pixel Code -->

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
            <?= ClientsWidget::widget(); ?>
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