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
        <!-- Google Tag Manager -->
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start':
                            new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-TZB9HBQ');</script>
        <!-- End Google Tag Manager -->
        <!-- Facebook Pixel Code -->
        <script>
            !function (f, b, e, v, n, t, s)
            {
                if (f.fbq)
                    return;
                n = f.fbq = function () {
                    n.callMethod ?
                            n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq)
                    f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script',
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
    <script type="application/ld+json">
        {
        "@context": "http://schema.org",
        "@type": "LocalBusiness",     
        "image": "http://www.sumanastech.com/themes/st_theme/images/logo.png",
        "url": "http://www.sumanastech.com/",
        "logo": "http://www.sumanastech.com/themes/st_theme/images/logo.png",
        "hasMap": "https://goo.gl/maps/sa1KZLKB5q32",

        "email": "mailto:info@sumanastech.com",
        "address": {
        "@type": "PostalAddress",
        "addressLocality": "Madurai",
        "addressRegion": "India",
        "postalCode":"625010",
        "streetAddress": "Rasi Towers, Velmurugan Nagar, Bypass Road"
        },
        "description": "Sumanas Tech is One of The World’s Largest White Label Website Development Company and Digital Marketing Agency in Madurai. With 10+ yrs Experience in Custom Web Application Development",
        "name": "Sumanas Technologies",
        "telephone": "989-472-5600",
        "openingHours": "Mo 09:30-19:00,Tu 09:30-19:00,We 09:30-19:00,Th 09:30-19:00,Fr 09:30-19:00,Sa 09:30-16:00",
        "geo": {
        "@type": "GeoCoordinates",
        "latitude": "9.913938",
        "longitude": "78.0912065"
        },         
        "aggregateRating": {
        "@type": "AggregateRating",
        "ratingValue": "4.3",
        "reviewCount": "138"
        },
        "sameAs" : ["https://www.facebook.com/sumanastechnologies/",
        "https://www.linkedin.com/company/25067058/",
        "https://twitter.com/sumanastech",                            
        "https://plus.google.com/+SumanasTech"]
        }
    </script>


    <?php $this->beginBody() ?>
    <!-- Header Start-->
    <?php echo $this->render('@frontend/views/includes/header'); ?>
    <!-- Header End-->

    <!-- Menu Start-->
    <?php echo $this->render('@frontend/views/includes/menu'); ?>
    <!-- Menu End-->

    <!-- Page Wrapper Start -->
    <?= $content ?>
    <!-- Footer Start -->
    <?php echo $this->render('@frontend/views/includes/footer'); ?>
    <!-- Footer End -->
    <!-- Page Wrapper End -->

    <div class="drawermenu-overlay"></div>
    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>