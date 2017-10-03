<?php

namespace common\modules\portfolio\models;

use paulzi\nestedintervals\NestedIntervalsBehavior;
use yeesoft\db\ActiveRecord;
use Yii;
use yii\base\InvalidParamException;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\SluggableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveQuery;
use yii\httpclient\Exception;
use yii\web\User;

/**
 * This is the model class for table "portfolio_category".
 *
 * @property integer $id
 * @property string $slug
 * @property string $title
 * @property string $description
 * @property integer $visible
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property integer $left_border
 * @property integer $right_border
 * @property integer $depth
 *
 * @property User $createdBy
 * @property User $updatedBy
 */
class PortfolioCategory extends ActiveRecord {

    public function behaviors() {
        return [
            BlameableBehavior::className(),
            TimestampBehavior::className(),
            'sluggable' => [
                'class' => SluggableBehavior::className(),
                'attribute' => 'title',
            ],
//            'multilingual' => [
//                'class' => MultilingualBehavior::className(),
//                'langForeignKey' => 'post_category_id',
//                'tableName' => "{{%post_category_lang}}",
//                'attributes' => [
//                    'title', 'description',
//                ]
//            ],
            'nestedInterval' => [
                'class' => NestedIntervalsBehavior::className(),
                'leftAttribute' => 'left_border',
                'rightAttribute' => 'right_border',
                'amountOptimize' => '25',
                'noPrepend' => true,
            ],
        ];
    }

    public function transactions() {
        return [
            self::SCENARIO_DEFAULT => self::OP_ALL,
        ];
    }

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'portfolio_category';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
                [['title', 'slug'], 'required'],
                [['description'], 'string'],
                [['visible', 'created_at', 'updated_at', 'created_by', 'updated_by', 'left_border', 'right_border', 'depth'], 'integer'],
                [['slug'], 'string', 'max' => 200],
                [['title'], 'string', 'max' => 255],
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
            'description' => 'Description',
            'visible' => 'Visible',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'left_border' => 'Left Border',
            'right_border' => 'Right Border',
            'depth' => 'Depth',
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

    public function getPortfolios() {
        return $this->hasMany(Portfolio::className(), ['id' => 'portfolio_id'])
                        ->viaTable('{{%portfolio_category_portfolio}}', ['portfolio_category_id' => 'id']);
    }

    /**
     * @inheritdoc
     * @return PortfolioCategoryQuery the active query used by this AR class.
     */
    public static function find() {
        return new PortfolioCategoryQuery(get_called_class());
    }

    public function save($runValidation = true, $attributeNames = null) {
        $parent = null;

        if (isset($this->parent_id) && $this->parent_id) {
            $parent = PortfolioCategory::findOne((int) $this->parent_id);
        }

        if (!$parent) {
            $parent = PortfolioCategory::findOne(1);
        }

        if (!$parent) {
            throw new InvalidParamException();
        }


        $this->appendTo($parent);

        try {
            return parent::save($runValidation, $attributeNames);
        } catch (Exception $exc) {
            Yii::$app->session->setFlash('crudMessage', $exc->getMessage());
        }
    }

    public static function getPortfolioCategories() {
        $result = [];
        $categories = static::find()->andWhere(['visible' => 1])->all();
        foreach ($categories as $category) {
            $result[] = ['id' => $category->id, 'name' => $category->title];
        }

        return $result;
    }

}
