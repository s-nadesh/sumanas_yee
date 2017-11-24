<div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="7000"> 
    <!-- Carousel indicators -->
    <ol class="carousel-indicators">
        <?php foreach ($clients as $key => $client) { ?>
            <li data-target="#fade-quote-carousel" data-slide-to="<?php echo $key ?>" class="<?= ($key == 0) ? 'active' : '' ?>"></li>
        <?php } ?>
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