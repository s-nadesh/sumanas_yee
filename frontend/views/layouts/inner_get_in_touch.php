<?php
/* @var $this View */
/* @var $content string */

use frontend\assets\AppAsset;
use frontend\assets\ThemeAsset;
use yeesoft\block\models\Block;
use yii\helpers\Html;
use yii\web\View;

Yii::$app->assetManager->forceCopy = true;
AppAsset::register($this);
ThemeAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TZB9HBQ');</script>
<!-- End Google Tag Manager -->

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
        <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TZB9HBQ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

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