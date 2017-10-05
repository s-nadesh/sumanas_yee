<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 */

use yii\helpers\Url;
?>

<?php foreach (array_chunk($works, 2, true) as $values) { ?>
    <div class='project-thumb-cont'>
        <?php foreach ($values as $work) { ?>
            <div class="project-thumb1">
                <a target="_blank" rel="noindex,nofollow" href="<?php echo Url::to($work['link']); ?>">
                    <img src="<?php echo $work['thumbnail']; ?>" >
                </a>
            </div>
        <?php } ?>
    </div>
<?php } ?>