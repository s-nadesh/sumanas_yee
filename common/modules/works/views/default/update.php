<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model yeesoft\post\models\Category */

$this->title = Yii::t('yee/media', 'Update Works');
$this->params['breadcrumbs'][] = ['label' => Yii::t('yee/post', 'Works'), 'url' => ['index']];
$this->params['breadcrumbs'][] = Yii::t('yee', 'Update');
?>
<div class="post-category-update">
    <h3 class="lte-hide-title"><?= Html::encode($this->title) ?></h3>
    <?= $this->render('_form', compact('model')) ?>
</div>