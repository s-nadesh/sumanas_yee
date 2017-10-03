<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\modules\portfolio\models\PortfolioCategory */

$this->title = 'Update Portfolio Category: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Portfolio Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="portfolio-category-update">

    <h3 class="lte-hide-title"><?= Html::encode($this->title) ?></h3>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
