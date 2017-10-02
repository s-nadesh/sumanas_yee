<?php

namespace common\modules\team\models;

use yeesoft\db\ActiveRecord;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\SluggableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveQuery;
use yii\web\User;

/**
 * This is the model class for table "{{%team}}".
 *
 * @property integer $id
 * @property string $slug
 * @property string $title
 * @property string $designation
 * @property string $hobbies1
 * @property string $hobbies2
 * @property string $hobbies3
 * @property string $hobbies4
 * @property string $hobbies5
 * @property string $thumbnail
 * @property integer $visible
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 *
 * @property User $createdBy
 * @property User $updatedBy
 */
class Team extends ActiveRecord {

    public function behaviors() {
        return [
            BlameableBehavior::className(),
            TimestampBehavior::className(),
            'sluggable' => [
                'class' => SluggableBehavior::className(),
                'attribute' => 'title',
            ],
//        'multilingual' => [
//                'class' => MultilingualBehavior::className(),
//                'langForeignKey' => 'post_category_id',
//                'tableName' => "{{%post_category_lang}}",
//                'attributes' => [
//                    'title', 'description',
//                ]
//            ],
//            'nestedInterval' => [
//                'class' => NestedIntervalsBehavior::className(),
//                'leftAttribute' => 'left_border',
//                'rightAttribute' => 'right_border',
//                'amountOptimize' => '25',
//                'noPrepend' => true,
//            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'team';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
                [['slug', 'title', 'hobbies1', 'hobbies2', 'hobbies3', 'hobbies4', 'hobbies5'], 'required'],
                [['designation'], 'string'],
                [['visible', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
                [['slug'], 'string', 'max' => 200],
                [['title', 'hobbies1', 'hobbies2', 'hobbies3', 'hobbies4', 'hobbies5', 'thumbnail'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'slug' => 'Slug',
            'title' => 'Title',
            'designation' => 'Designation',
            'hobbies1' => 'Hobbies1',
            'hobbies2' => 'Hobbies2',
            'hobbies3' => 'Hobbies3',
            'hobbies4' => 'Hobbies4',
            'hobbies5' => 'Hobbies5',
            'thumbnail' => 'Thumbnail',
            'visible' => 'Visible',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
        ];
    }

    /**
     * @return ActiveQuery
     */
    public function getCreatedBy() {
        return $this->hasOne(User::className(), ['id' => 'created_by']);
    }

    /**
     * @return ActiveQuery
     */
    public function getUpdatedBy() {
        return $this->hasOne(User::className(), ['id' => 'updated_by']);
    }

    /**
     * @inheritdoc
     * @return TeamQuery the active query used by this AR class.
     */
    public static function find() {
        return new TeamQuery(get_called_class());
    }

}
