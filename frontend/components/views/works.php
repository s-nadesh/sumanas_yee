<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 */

use yii\helpers\Url;
use yii\helpers\Html;
?>
<?php
echo "<div class='project-thumb-cont'>";
foreach ($works as $key => $work) {
    ?>
    <div class="project-thumb1">
        <a href="<?php echo Url::to($work['link']); ?>"><img src="<?php echo $work['thumbnail']; ?>" target="_blank" rel="noindex,nofollow">
        </a>
    </div>
    <?php
    if ($key % 2) {
        echo "</div><div class='project-thumb-cont'>";
    }
    ?>
    <?php
}
echo "</div>";
?>