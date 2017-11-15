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
        foreach ($clients as $key => $client) :
//                            echo $key;
            ?>
            <div class="item <?php echo ($key == 0) ? 'active' : '' ?>">
                <div class="profile-circle"> <img src="<?php echo $client['thumbnail']; ?>" alt="<?= $client['title'] ?>"></div>
                <blockquote>
                    <p><?= $client['description'] ?></p>
                    <p> <strong> <?= $client['title'] ?> </strong></p>
                </blockquote>
            </div>
        <?php endforeach; ?>
    </div>
</div>