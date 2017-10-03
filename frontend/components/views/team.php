<?php

use yii\helpers\Url;
use yii\helpers\Html;

/* @var $post yeesoft\post\models\Post */

//$page = (isset($page)) ? $page : 'posts';
?>
<?php
echo "<div class='team-cont'>";
foreach ($teams as $key => $team) {
    ?>
    <div class="team">
        <div class="team-hobby">
            <ul>
                <li> <?php echo $team['hobbies1'] ?></li>
                <li><?php echo $team['hobbies2'] ?></li>
                <li><?php echo $team['hobbies3'] ?></li>
                <li><?php echo $team['hobbies4'] ?></li>
                <li><?php echo $team['hobbies5'] ?></li>
            </ul>
        </div>
        <div class="team-name"> <?php echo $team['title'] ?> <br/>
            <span> <?php echo $team['designation'] ?> </span></div>
        <img src="<?php echo $team['thumbnail'] ?>" alt="<?php echo $team['title'] ?>"></div>

    <?php
    if ($key % 2) {
        echo "</div><div class='team-cont'>";
    }
    ?>
    <?php
}
echo "</div>";
?>


