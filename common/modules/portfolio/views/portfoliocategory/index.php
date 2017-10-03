<?php

use common\modules\portfolio\models\PortfolioCategory;
use common\modules\portfolio\models\PortfolioCategorySearch;
use yeesoft\grid\GridPageSize;
use yeesoft\grid\GridView;
use yii\data\ActiveDataProvider;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\web\View;
use yii\widgets\Pjax;

/* @var $this View */
/* @var $searchModel PortfolioCategorySearch */
/* @var $dataProvider ActiveDataProvider */

$this->title = 'Portfolio Categories';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="portfolio-category-index">
    <div class="row">
        <div class="col-sm-12">
            <h3 class="lte-hide-title page-title"><?= Html::encode($this->title) ?></h3>
            <?= Html::a('Create Portfolio Category', ['create'], ['class' => 'btn btn-sm btn-primary']) ?>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-12 text-right">
                    <?= GridPageSize::widget(['pjaxId' => 'portfolio-category-grid-pjax']) ?>
                </div>
            </div>

            <?php Pjax::begin(['id' => 'portfolio-category-grid-pjax']); ?>    

            <?=
            GridView::widget([
                'id' => 'portfolio-category-grid',
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'bulkActionOptions' => [
                    'gridId' => 'portfolio-category-grid',
                    'actions' => [Url::to(['bulk-delete']) => Yii::t('yee', 'Delete')]
                ],
                'columns' => [
                        ['class' => 'yeesoft\grid\CheckboxColumn', 'options' => ['style' => 'width:10px']],
                        [
                        'class' => 'yeesoft\grid\columns\TitleActionColumn',
                        'controller' => '/portfolio/portfoliocategory',
                        'title' => function (PortfolioCategory $model) {
                            return Html::a($model->title, ['update', 'id' => $model->id], ['data-pjax' => 0]);
                        },
                        'buttonsTemplate' => '{update} {delete}',
                    ],
                        [
                        'class' => 'yeesoft\grid\columns\StatusColumn',
                        'attribute' => 'visible',
                    ],
                ],
            ]);
            ?>

            <?php Pjax::end(); ?>
        </div>
    </div>
</div>
