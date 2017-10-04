<?php
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
            <li><strong>Categories</strong><?php echo implode(', ', $categories)?></li>
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
            <li class="cbp-l-project-related-item">
                <a href="/themes/st_theme/ajax-awesome-work/project9.html" class="cbp-singlePage cbp-l-project-related-link" rel="nofollow">
                    <img src="http://scriptpie.com/cubeportfolio/img/?i=480x250/cc074b" alt="">
                    <div class="cbp-l-project-related-title">Speed Detector</div>
                </a>
            </li>
            <li class="cbp-l-project-related-item">
                <a href="/themes/st_theme/ajax-awesome-work/project2.html" class="cbp-singlePage cbp-l-project-related-link" rel="nofollow">
                    <img src="http://scriptpie.com/cubeportfolio/img/?i=480x250/4d1f59" alt="">
                    <div class="cbp-l-project-related-title">World Clock Widget</div>
                </a>
            </li>
            <li class="cbp-l-project-related-item">
                <a href="/themes/st_theme/ajax-awesome-work/project3.html" class="cbp-singlePage cbp-l-project-related-link" rel="nofollow">
                    <img src="http://scriptpie.com/cubeportfolio/img/?i=480x250/4f4e75" alt="">
                    <div class="cbp-l-project-related-title">To-Do Dashboard</div>
                </a>
            </li>
        </ul>

    </div>
</div>

<br><br><br>