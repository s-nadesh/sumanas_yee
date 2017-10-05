<?php

use yeesoft\post\models\Post;

/* @var $post Post */
?>
<?php foreach (array_chunk($teams, 2, true) as $values) { ?>
    <div class='team-cont'>
        <?php foreach ($values as $team) { ?>
            <div class="team">
                <div class="team-hobby">
                    <ul>
                        <li><?php echo $team['hobbies1'] ?></li>
                        <li><?php echo $team['hobbies2'] ?></li>
                        <li><?php echo $team['hobbies3'] ?></li>
                        <li><?php echo $team['hobbies4'] ?></li>
                        <li><?php echo $team['hobbies5'] ?></li>
                    </ul>
                </div>
                <div class="team-name"> 
                    <?php echo $team['title'] ?> <br/>
                    <span> <?php echo $team['designation'] ?> </span>
                </div>
                <img src="<?php echo $team['thumbnail'] ?>" alt="<?php echo $team['title'] ?>">
            </div>
        <?php } ?>
    </div>
<?php } ?>