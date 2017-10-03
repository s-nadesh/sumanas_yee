<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\modules\portfolio\models\PortfolioCategory */

$this->title = 'Create Portfolio';
$this->params['breadcrumbs'][] = ['label' => 'Portfolio', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="portfolio-category-create">

    <h3 class="lte-hide-title"><?= Html::encode($this->title) ?></h3>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
