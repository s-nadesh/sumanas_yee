<?php

use common\modules\portfolio\models\PortfolioCategory;
use yii\helpers\Html;
use yii\web\View;
use yii\widgets\ActiveForm;

/* @var $this View */
/* @var $model PortfolioCategory */
/* @var $form ActiveForm */
?>

<div class="portfolio-category-form">
    <?php
    $form = ActiveForm::begin([
                'id' => 'portfolio-category-form',
                'validateOnBlur' => false
    ]);
    ?>
    <div class="row">
        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-body">
                    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'slug')->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="record-info">
                        <?= $form->field($model, 'visible')->checkbox() ?>

                        <div class="form-group">
                            <?php if ($model->isNewRecord): ?>
                                <?= Html::submitButton(Yii::t('yee', 'Create'), ['class' => 'btn btn-primary']) ?>
                                <?= Html::a(Yii::t('yee', 'Cancel'), ['index'], ['class' => 'btn btn-default']) ?>
                            <?php else: ?>
                                <?= Html::submitButton(Yii::t('yee', 'Save'), ['class' => 'btn btn-primary']) ?>
                                <?=
                                Html::a(Yii::t('yee', 'Delete'), ['delete', 'id' => $model->id], [
                                    'class' => 'btn btn-default',
                                    'data' => [
                                        'confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                        'method' => 'post',
                                    ],
                                ])
                                ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php ActiveForm::end(); ?>
</div>