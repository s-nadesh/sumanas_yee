<?php

use yii\helpers\Url;
use yii\helpers\Html;

/* @var $post yeesoft\post\models\Post */

//$page = (isset($page)) ? $page : 'posts';
?>
<?php foreach ($clients as $row) {
    
    ?>
    <div class="client-cont">
        <p><img src="<?php echo $row['thumbnail']; ?>"></p>
        <p><?= Html::a($row->title, ["/site/{$row->slug}"]) ?></p>

        <div class="client-hover">
            <p><strong><?= Html::a($row->title, ["/site/{$row->slug}"]) ?></strong></p>
            <p><?= $row->description ?></p>
        </div>
    </div>
<?php } ?>
