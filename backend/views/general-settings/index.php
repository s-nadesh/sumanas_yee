<?php

use backend\models\GeneralSettings;
use yeesoft\settings\assets\SettingsAsset;
//use yeesoft\settings\models\GeneralSettings;
use yii\helpers\Html;
use yeesoft\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model yeesoft\models\Setting */
/* @var $form yeesoft\widgets\ActiveForm */

$this->title = Yii::t('yee/settings', 'General Settings');
$this->params['breadcrumbs'][] = $this->title;

SettingsAsset::register($this);
?>
<div class="setting-index">

    <div class="row">
        <div class="col-lg-8"><h3 class="lte-hide-title page-title"><?= Html::encode($this->title) ?></h3></div>
    </div>

    <div class="setting-form">
        <?php
        $form = ActiveForm::begin([
                    'id' => 'setting-form',
                    'validateOnBlur' => false,
                    'fieldConfig' => [
                        'template' => "<div class=\"settings-group\"><div class=\"settings-label\">{label}</div>\n<div class=\"settings-field\">{input}\n{hint}\n{error}</div></div>"
                    ],
                ])
        ?>



        <?= $form->field($model, 'mobile', ['multilingual' => true])->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'alt_phone', ['multilingual' => true])->textInput(['maxlength' => true])/* ->hint($model->getDescription('description')) */ ?>

        <?= $form->field($model, 'address')->textarea(['maxlength' => true, 'rows' => '6'])->hint($model->getDescription('address')) ?>

        <?= $form->field($model, 'facebook')->textInput(['maxlength' => true])->hint($model->getDescription('facebook')) ?>

        <?= $form->field($model, 'twitter')->textInput(['maxlength' => true])->hint($model->getDescription('twitter')) ?>  

        <?= $form->field($model, 'gplus')->textInput(['maxlength' => true])->hint($model->getDescription('gplus')) ?> 

        <?= $form->field($model, 'linkedin')->textInput(['maxlength' => true])->hint($model->getDescription('linkedin')) ?>
        
        <?= $form->field($model, 'pinterest')->textInput(['maxlength' => true])->hint($model->getDescription('pinterest')) ?>


        <div class="form-group">
            <?= Html::submitButton(Yii::t('yee', 'Save'), ['class' => 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>

    </div>
</div>


