<?php

use yii\helpers\Url;
?>
<?php
foreach ($portfolio as $key => $port) {
    $count = $key + 1;
    $class = "cbp-loadMore-block" . $count;
    $categories = [];
    foreach ($port->portfolioCategories as $portcategories) {
        $categories[] = $portcategories->slug;
    }
    ?>
<div class="<?php echo $class; ?>">
    <div class="cbp-item <?php echo implode(" ", $categories) ?>">
        <a href="<?php echo Url::to([$port['slug']]); ?>" class="cbp-caption cbp-singlePage" rel="nofollow">
            <div class="cbp-caption-defaultWrap">
                <img src="<?php echo $port['thumbnail'] ?>" alt="">
            </div>
            <div class="cbp-caption-activeWrap"></div>
        </a>
        <a href="<?php echo Url::to([$port['slug']]); ?>" class="cbp-caption cbp-singlePage" rel="nofollow">
            <div class="cbp-l-grid-work-title"><?php echo $port['title'] ?></div></a>
        <div class="cbp-l-grid-work-desc"><?php echo $port['sub_title'] ?></div>
    </div>
</div>
<?php } ?>