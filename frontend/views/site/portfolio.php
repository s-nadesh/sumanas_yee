<div class="inner-page-heading ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h1>Portfolio </h1>
                <span>The platforms we work on are diverse and extensive in terms of scalability. </span> </div>
        </div>
    </div>
</div>
<div class=" platform-cont">
    <div class="container-fluid">
        <div class="row">

            <div id="js-filters-awesome-work" class="cbp-l-filters-work">
                <?php
                foreach ($model as $key => $port) :
                    ?>
                    <div class="<?php echo ($key == 0) ? 'cbp-filter-item-active' : '' ?> cbp-filter-item">
                        <?php echo $port['title']; ?><div class="cbp-filter-counter"></div>
                    </div>
                <?php endforeach; ?>
            </div>

            <div id="js-grid-awesome-work" class="cbp cbp-l-grid-work">
                <div class="cbp-item identity">
                    <?php                        foreach ($portfolio as $row) { ?>
                    <a href="ajax-awesome-work/project1.html" class="cbp-caption cbp-singlePage" rel="nofollow">
                        <div class="cbp-caption-defaultWrap">
                            <img src="<?php echo $row['thumbnail'] ?>" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap"></div>
                    </a>
                    <a href="ajax-awesome-work/project1.html" class="cbp-l-grid-work-title cbp-singlePage" rel="nofollow"><?php echo $row['title'] ?></a>
                    <div class="cbp-l-grid-work-desc"><?php echo $row['sub_title'] ?></div>  <?php } ?>
                </div>
                <div class="cbp-item web-design logos">
                    <a href="ajax-awesome-work/project2.html" class="cbp-caption cbp-singlePage" rel="nofollow">
                        <div class="cbp-caption-defaultWrap">
                            <img src="http://scriptpie.com/cubeportfolio/img/?i=480x250/d06583" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap"></div>
                    </a>
                    <a href="ajax-awesome-work/project2.html" class="cbp-l-grid-work-title cbp-singlePage" rel="nofollow">World Clock Widget</a>
                    <div class="cbp-l-grid-work-desc">Logo / Web Design</div>
                </div>
                <div class="cbp-item graphic logos">
                    <a href="ajax-awesome-work/project3.html" class="cbp-caption cbp-singlePage" rel="nofollow">
                        <div class="cbp-caption-defaultWrap">
                            <img src="http://scriptpie.com/cubeportfolio/img/?i=480x250/d2949f" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap"></div>
                    </a>
                    <a href="ajax-awesome-work/project3.html" class="cbp-l-grid-work-title cbp-singlePage" rel="nofollow">To-Do Dashboard</a>
                    <div class="cbp-l-grid-work-desc">Graphic / Logo</div>
                </div>
                <div class="cbp-item web-design graphic">
                    <a href="ajax-awesome-work/project4.html" class="cbp-caption cbp-singlePage" rel="nofollow">
                        <div class="cbp-caption-defaultWrap">
                            <img src="http://scriptpie.com/cubeportfolio/img/?i=480x250/53acad" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap"></div>
                    </a>
                    <a href="ajax-awesome-work/project4.html" class="cbp-l-grid-work-title cbp-singlePage" rel="nofollow">Events and More</a>
                    <div class="cbp-l-grid-work-desc">Web Design / Graphic</div>
                </div>
                <div class="cbp-item identity web-design">
                    <a href="ajax-awesome-work/project5.html" class="cbp-caption cbp-singlePage" rel="nofollow">
                        <div class="cbp-caption-defaultWrap">
                            <img src="http://scriptpie.com/cubeportfolio/img/?i=480x250/55dbc9" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap"></div>
                    </a>
                    <a href="ajax-awesome-work/project5.html" class="cbp-l-grid-work-title cbp-singlePage" rel="nofollow">WhereTO App</a>
                    <div class="cbp-l-grid-work-desc">Web Design / Identity</div>
                </div>
                <div class="cbp-item identity web-design">
                    <a href="ajax-awesome-work/project6.html" class="cbp-caption cbp-singlePage" rel="nofollow">
                        <div class="cbp-caption-defaultWrap">
                            <img src="http://scriptpie.com/cubeportfolio/img/?i=480x250/4d1f59" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap"></div>
                    </a>
                    <a href="ajax-awesome-work/project6.html" class="cbp-l-grid-work-title cbp-singlePage" rel="nofollow">Ski * Buddy</a>
                    <div class="cbp-l-grid-work-desc">Identity / Web Design</div>
                </div>
            </div>

            <div id="js-loadMore-awesome-work" class="cbp-l-loadMore-button">
                <a href="/themes/st_theme/ajax-awesome-work/loadMore.html" class="cbp-l-loadMore-link" rel="nofollow">
                    <span class="cbp-l-loadMore-defaultText">LOAD MORE</span>
                    <span class="cbp-l-loadMore-loadingText">LOADING...</span>
                    <span class="cbp-l-loadMore-noMoreLoading">NO MORE WORKS</span>
                </a>
            </div>


        </div>
    </div>
