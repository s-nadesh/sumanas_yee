<?php

namespace backend\models;

use yeesoft\behaviors\MultilingualSettingsBehavior;
use Yii;
use yii\helpers\ArrayHelper;

/**
 * @author Taras Makitra <makitrataras@gmail.com>
 */
class GeneralSettings extends \yeesoft\settings\models\BaseSettingsModel {

    const GROUP = 'general';

    public $mobile;
    public $alt_phone;
    public $address;
    public $facebook;
    public $twitter;
    public $gplus;
    public $linkedin;
    public $pinterest;

    /**
     * @inheritdoc
     */
    public function rules() {
        return ArrayHelper::merge(parent::rules(), [
                        [['mobile', 'address'], 'required'],
        ]);
    }

    /**
     * @inheritdoc
     */
    public function behaviors() {
        return [
            'multilingualSettings' => [
                'class' => MultilingualSettingsBehavior::className(),
                'attributes' => [
                    'title', 'description'
                ]
            ],
        ];
    }

    public function attributeLabels() {
        return [
            'mobile' => Yii::t('yee/settings', 'Phone No'),
            'alt_phone' => Yii::t('yee/settings', 'Alternate No'),
            'address' => Yii::t('yee/settings', 'Address'),
            'facebook' => Yii::t('yee/settings', 'FaceBook'),
            'twitter' => Yii::t('yee/settings', 'Twitter'),
            'gplus' => Yii::t('yee/settings', 'Google Plus'),
            'linkedin' => Yii::t('yee/settings', 'LinkedIn'),
            'pinterest' => Yii::t('yee/settings', 'Pinterest'),
        ];
    }

}
