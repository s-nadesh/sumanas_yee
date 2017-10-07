<?php

use yii\helpers\Url;

$this->title = 'Portfolio';
?>
<div class="inner-page-heading ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h1>Portfolio </h1>
                <span>The platforms we work on are diverse and extensive in terms of scalability! </span> </div>
        </div>
    </div>
</div>
<div class=" platform-cont">
    <div class="container-fluid">
        <div class="row">

            <div id="js-filters-awesome-work" class="cbp-l-filters-work">
                <div data-filter="*" class="cbp-filter-item-active cbp-filter-item">
                    SHOW ALL
                </div>
                <?php
                foreach ($port_category as $port_cat) :
                    ?>
                    <div data-filter=".<?php echo $port_cat['slug'] ?>" class="cbp-filter-item">
                        <?php echo $port_cat['title']; ?><div class="cbp-filter-counter"></div>
                    </div>
                <?php endforeach; ?>
            </div>

            <div id="js-grid-awesome-work" class="cbp cbp-l-grid-work">
                <?php
                foreach ($portfolio as $port) {
                    $categories = [];
                    foreach ($port->portfolioCategories as $portcategories) {
                        $categories[] = $portcategories->slug;
                    }
                    ?>
                    <div class="cbp-item <?php echo implode(" ", $categories) ?>">
                        <a href="<?php echo Url::to([$port['slug']]); ?>" class="cbp-caption cbp-singlePage" rel="nofollow">
                            <div class="cbp-caption-defaultWrap">
                                <img src="<?php echo $port['thumbnail'] ?>" alt="">
                            </div>
                            <div class="cbp-caption-activeWrap"></div>
                        </a>
                        <a href="<?php echo Url::to([$port['slug']]); ?>" class="cbp-l-grid-work-title cbp-singlePage" rel="nofollow">
                            <?php echo $port['title'] ?>
                        </a>
                        <div class="cbp-l-grid-work-desc">
                            <?php echo $port['sub_title'] ?>
                        </div>
                    </div>
                <?php } ?>
            </div>

            <div id="js-loadMore-awesome-work" class="cbp-l-loadMore-button">
                <a href="<?php echo Url::to(['loadmoreportfolio']); ?>" class="cbp-l-loadMore-link" rel="nofollow">
                    <span class="cbp-l-loadMore-defaultText">LOAD MORE</span>
                    <span class="cbp-l-loadMore-loadingText">LOADING...</span>
                    <span class="cbp-l-loadMore-noMoreLoading">NO MORE WORKS</span>
                </a>
            </div>
        </div>
    </div>