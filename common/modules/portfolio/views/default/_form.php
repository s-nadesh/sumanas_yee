<?php

use common\modules\portfolio\models\PortfolioCategory;
use yeesoft\media\widgets\FileInput;
use yeesoft\post\widgets\MagicSuggest;
use yii\helpers\Html;
use yii\jui\DatePicker;
use yii\web\View;
use yii\widgets\ActiveForm;

/* @var $this View */
/* @var $model PortfolioCategory */
/* @var $form ActiveForm */
?>

<div class="portfolio-form">
    <?php
    $form = ActiveForm::begin([
                'id' => 'portfolio-form',
                'validateOnBlur' => false
    ]);
    ?>

    <div class="row">
        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-body">
                    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'sub_title')->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'slug')->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>
                    <?= $form->field($model, 'portfolio_link')->textInput(['maxlength' => true]) ?>
                </div>
            </div>
        </div>

        <div class="col-md-3">

            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="record-info">
                        <?= $form->field($model, 'client')->textInput(['maxlength' => true]) ?>
                        <?=
                                $form->field($model, 'portfolio_date')
                                ->widget(DatePicker::className(), ['dateFormat' => 'yyyy-MM-dd', 'options' => ['class' => 'form-control']]);
                        ?>
                        <?= $form->field($model, 'portfolioCategoriesValues')->widget(MagicSuggest::className(), ['items' => PortfolioCategory::getPortfolioCategories()]); ?>
                        <?= $form->field($model, 'portfolio_order')->textInput(['maxlength' => true]) ?>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="record-info">
                        <?=
                        $form->field($model, 'thumbnail')->widget(FileInput::className(), [
                            'name' => 'image',
                            'buttonTag' => 'button',
                            'buttonName' => Yii::t('yee', 'Browse'),
                            'buttonOptions' => ['class' => 'btn btn-default btn-file-input'],
                            'options' => ['class' => 'form-control', 'multiple' => true],
                            'template' => '<div class="portfolio-thumbnail thumbnail"></div><div class="input-group">{input}<span class="input-group-btn">{button}</span></div>',
                            'thumb' => $this->context->module->thumbnailSize,
                            'imageContainer' => '.portfolio-thumbnail',
                            'pasteData' => FileInput::DATA_URL,
                            'callbackBeforeInsert' => 'function(e, data) {
                                $(".portfolio-thumbnail").show();
                            }',
                        ])
                        ?>
                    </div>
                </div>
            </div>
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

    <div class="row">
        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="record-info">
                        <?=
                        $form->field($model, 'image1')->widget(FileInput::className(), [
                            'name' => 'image',
                            'buttonTag' => 'button',
                            'buttonName' => Yii::t('yee', 'Browse'),
                            'buttonOptions' => ['class' => 'btn btn-default btn-file-input'],
                            'options' => ['class' => 'form-control', 'multiple' => true],
                            'template' => '<div class="portfolio-image1 thumbnail"></div><div class="input-group">{input}<span class="input-group-btn">{button}</span></div>',
                            'thumb' => $this->context->module->thumbnailSize,
                            'imageContainer' => '.portfolio-image1',
                            'pasteData' => FileInput::DATA_URL,
                            'callbackBeforeInsert' => 'function(e, data) {
                                $(".portfolio-image1").show();
                            }',
                        ])
                        ?>
                    </div>
                    <div class="record-info">
                        <?=
                        $form->field($model, 'image2')->widget(FileInput::className(), [
                            'name' => 'image',
                            'buttonTag' => 'button',
                            'buttonName' => Yii::t('yee', 'Browse'),
                            'buttonOptions' => ['class' => 'btn btn-default btn-file-input'],
                            'options' => ['class' => 'form-control', 'multiple' => true],
                            'template' => '<div class="portfolio-image2 thumbnail"></div><div class="input-group">{input}<span class="input-group-btn">{button}</span></div>',
                            'thumb' => $this->context->module->thumbnailSize,
                            'imageContainer' => '.portfolio-image2',
                            'pasteData' => FileInput::DATA_URL,
                            'callbackBeforeInsert' => 'function(e, data) {
                                $(".portfolio-image2").show();
                            }',
                        ])
                        ?>
                    </div>
                    <div class="record-info">
                        <?=
                        $form->field($model, 'image3')->widget(FileInput::className(), [
                            'name' => 'image',
                            'buttonTag' => 'button',
                            'buttonName' => Yii::t('yee', 'Browse'),
                            'buttonOptions' => ['class' => 'btn btn-default btn-file-input'],
                            'options' => ['class' => 'form-control', 'multiple' => true],
                            'template' => '<div class="portfolio-image3 thumbnail"></div><div class="input-group">{input}<span class="input-group-btn">{button}</span></div>',
                            'thumb' => $this->context->module->thumbnailSize,
                            'imageContainer' => '.portfolio-image3',
                            'pasteData' => FileInput::DATA_URL,
                            'callbackBeforeInsert' => 'function(e, data) {
                                $(".portfolio-image3").show();
                            }',
                        ])
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php ActiveForm::end(); ?>
</div>
<?php
$css = <<<CSS
.ms-ctn .ms-sel-ctn {
    margin-left: -6px;
    margin-top: -2px;
}
.ms-ctn .ms-sel-item {
    color: #666;
    font-size: 14px;
    cursor: default;
    border: 1px solid #ccc;
}
CSS;

$js = <<<JS
    var thumbnail = $("#portfolio-thumbnail").val();
    if(thumbnail.length == 0){
        $('.portfolio-thumbnail').hide();
    } else {
        $('.portfolio-thumbnail').html('<img src="' + thumbnail + '" />');
    }
    var image1 = $("#portfolio-image1").val();
    if(image1.length == 0){
        $('.portfolio-image1').hide();
    } else {
        $('.portfolio-image1').html('<img src="' + image1 + '" />');
    }
    var image2 = $("#portfolio-image2").val();
    if(image2.length == 0){
        $('.portfolio-image2').hide();
    } else {
        $('.portfolio-image2').html('<img src="' + image2 + '" />');
    }
    var image3 = $("#portfolio-image3").val();
    if(image3.length == 0){
        $('.portfolio-image3').hide();
    } else {
        $('.portfolio-image3').html('<img src="' + image3 + '" />');
    }
JS;

$this->registerCss($css);
$this->registerJs($js, View::POS_READY);
?>