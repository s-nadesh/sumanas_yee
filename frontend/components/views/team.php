<?php

use yeesoft\post\models\Post;

/* @var $post Post */
?>
<?php foreach ($teams as $team) { ?>
    <div class=" col-xs-6 col-sm-6 col-md-3 col-lg-3 team-wrap">
        <div class="team-member text-center">        
            <div class="team-img"> <img src="<?php echo $team['thumbnail'] ?>" alt="<?php echo $team['title'] ?>">
                <div class="overlay">
                    <div class="team-details text-center">
                        <h4> Hobbies</h4>
                        <ul>
                            <li><?php echo $team['hobbies1'] ?></li>
                            <li><?php echo $team['hobbies2'] ?></li>
                            <li><?php echo $team['hobbies3'] ?></li>
                            <li><?php echo $team['hobbies4'] ?></li>
                            <li><?php echo $team['hobbies5'] ?></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="team-name"> 
                <h6 class="team-title">  <?php echo $team['title'] ?> </h6>
                <span> <?php echo $team['designation'] ?> </span>
            </div>        
        </div>
    </div>
<?php } ?>
