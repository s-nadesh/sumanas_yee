<?php

use yii\helpers\Url;

$categories = [];
foreach ($portfolio->portfolioCategories as $portcategories) {
    $categories[] = $portcategories->slug;
}
?>
<div class="cbp-l-project-title"><?php echo $portfolio['title'] ?></div>
<div class="cbp-l-project-subtitle"><?php echo $portfolio['sub_title'] ?></div>

<div class="cbp-slider">
    <ul class="cbp-slider-wrap">
        <?php foreach ($portfolio->portfolioImages as $images) { ?>
            <li class="cbp-slider-item">
                <img src="<?php echo $images['image'] ?>" alt="">
            </li>
        <?php } ?>
    </ul>
</div>

<div class="cbp-l-project-container">
    <div class="cbp-l-project-desc">
        <div class="cbp-l-project-desc-title"><span>Project Description</span></div>
        <div class="cbp-l-project-desc-text">
            <?php echo $portfolio['description'] ?>
        </div>
    </div>
    <div class="cbp-l-project-details">
        <div class="cbp-l-project-details-title"><span>Project Details</span></div>

        <ul class="cbp-l-project-details-list">
            <li><strong>Client</strong><?php echo $portfolio['client'] ?></li>
            <li><strong>Date</strong><?php echo $portfolio['portfolio_date'] ?></li>
            <li><strong>Categories</strong><?php echo implode(', ', $categories) ?></li>
        </ul>
        <a href="<?php echo $portfolio['portfolio_link'] ?>" target="_blank" class="cbp-l-project-details-visit">
            visit the site
        </a>
    </div>
</div>

<div class="cbp-l-project-container">
    <div class="cbp-l-project-related">
        <div class="cbp-l-project-desc-title"><span>Related Projects</span></div>

        <ul class="cbp-l-project-related-wrap">
            <?php foreach ($related_projects as $related_project) { ?>
                <li class="cbp-l-project-related-item">
                    <a href="<?php echo Url::to([$related_project['slug']]); ?>" class="cbp-singlePage cbp-l-project-related-link" rel="nofollow">
                        <img src="<?php echo $related_project['thumbnail'] ?>" alt="">
                        <div class="cbp-l-project-related-title"><?php echo $related_project['title'] ?></div>
                    </a>
                </li>
            <?php } ?>
        </ul>

    </div>
</div>

<br><br><br>