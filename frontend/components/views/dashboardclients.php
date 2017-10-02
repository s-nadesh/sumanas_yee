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
        <p><?= Html::a($row->title) ?></p>

        <div class="client-hover">
            <p><strong><?= $row->title ?></strong></p>
            <p><?= $row->description ?></p>
        </div>
    </div>
<?php } ?>
