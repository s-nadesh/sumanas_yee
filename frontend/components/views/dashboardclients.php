<?php

use yii\helpers\Html;
?>
<?php foreach ($clients as $row) { ?>
    <div class="client-cont">
        <p><img src="<?php echo $row['thumbnail']; ?>" alt="<?php echo $row['title'] ?>"></p>
        <p><?= Html::a($row->title) ?></p>
        <div class="client-hover">
            <p><strong><?= $row->title ?></strong></p>
            <p><?= $row->description ?></p>
        </div>
    </div>
<?php } ?>