<?php

use common\modules\clients\models\Clients;
use yeesoft\grid\GridPageSize;
use yeesoft\grid\GridView;
use yeesoft\helpers\Html;
use yii\data\ActiveDataProvider;
use yii\helpers\Url;
use yii\web\View;
use yii\widgets\Pjax;

/* @var $this View */
/* @var $searchModel yeesoft\post\search\CategorySearch */
/* @var $dataProvider ActiveDataProvider */

$this->title = Yii::t('yee/media', 'Clients');
$this->params['breadcrumbs'][] = ['label' => Yii::t('yee/post', 'Clients'), 'url' => ['default/index']];
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="clients-index">

    <div class="row">
        <div class="col-sm-12">
            <h3 class="lte-hide-title page-title"><?= Html::encode($this->title) ?></h3>
            <?= Html::a(Yii::t('yee', 'Add New'), ['create'], ['class' => 'btn btn-sm btn-primary']) ?>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-body">

            <div class="row">
                <div class="col-sm-12 text-right">
                    <?= GridPageSize::widget(['pjaxId' => 'clients-grid-pjax']) ?>
                </div>
            </div>

            <?php Pjax::begin(['id' => 'clients-grid-pjax']) ?>

            <?= GridView::widget([
                'id' => 'clients-grid',
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'bulkActionOptions' => [
                    'gridId' => 'clients-grid',
                    'actions' => [Url::to(['bulk-delete']) => Yii::t('yee', 'Delete')]
                ],
                'columns' => [
                    ['class' => 'yeesoft\grid\CheckboxColumn', 'options' => ['style' => 'width:10px']],
                    [
                        'class' => 'yeesoft\grid\columns\TitleActionColumn',
                        'controller' => '/clients/default',
                        'title' => function (Clients $model) {
                            return Html::a($model->title, ['update', 'id' => $model->id], ['data-pjax' => 0]);
                        },
                        'buttonsTemplate' => '{update} {delete}',
                    ],
//                    'description:ntext',
                    [
                        'class' => 'yeesoft\grid\columns\StatusColumn',
                        'attribute' => 'visible',
                    ],
                ],
            ]); ?>

            <?php Pjax::end() ?>
        </div>
    </div>
</div>