<?php

use common\modules\portfolio\models\PortfolioCategory;
use yii\helpers\Html;
use yii\web\View;

/* @var $this View */
/* @var $model PortfolioCategory */

$this->title = 'Update Portfolio: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Portfolio', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="portfolio-category-update">

    <h3 class="lte-hide-title"><?= Html::encode($this->title) ?></h3>

    <?=
    $this->render('_form', [
        'model' => $model,
    ])
    ?>

</div>
