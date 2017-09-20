<?php

use yii\helpers\Url;
use yii\helpers\Html;

/* @var $post yeesoft\post\models\Post */

$page = (isset($page)) ? $page : 'post';
?>
<div class="client-cont">
    <!--<div class="post clearfix">-->
    <p><?= $post->getThumbnail(['style' => 'margin: 0 7px 7px 0']) ?></p>
    <p><?= Html::a($post->title, ["/site/{$post->slug}"]) ?></p>

<!--<p class="text-justify">-->
    <div class="client-hover">
        <p><strong><?= Html::a($post->title, ["/site/{$post->slug}"]) ?></strong></p>
        <p><?= ($page === 'post') ? $post->content : $post->shortContent ?></p>
        <!--</p>-->
    </div>
</div>
<!--</div>-->

