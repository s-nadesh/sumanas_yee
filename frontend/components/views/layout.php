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
                    <div class="carousel-inner">
                        <?php
                        foreach ($posts as $key => $post) :
//                            echo $key;
                            ?>
                            <div class="item <?php echo ($key == 0) ? 'active' : '' ?>">
                                <div class="profile-circle"> <img src="<?php echo $post['thumbnail']; ?>" alt="Martine Breton"></div>
                                <blockquote>
                                    <p><?= $post['description'] ?></p>
                                    <p> <strong> <?= $post['title'] ?> </strong></p>
                                </blockquote>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>