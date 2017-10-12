<?php

namespace common\modules\portfolio\models;

use yeesoft\db\ActiveRecord;
use yeesoft\post\models\Post;
use yeesoft\post\models\Tag;
use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\SluggableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveQuery;
use yii\web\User;

/**
 * This is the model class for table "portfolio".
 *
 * @property integer $id
 * @property string $slug
 * @property string $title
 * @property string $sub_title
 * @property string $description
 * @property string $client
 * @property integer $portfolio_date
 * @property string $portfolio_link
 * @property string $thumbnail
 * @property integer $visible
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 *
 * @property User $createdBy
 * @property User $updatedBy
 * @property PortfolioCategoryPortfolio[] $portfolioCategoryPortfolios
 * @property PortfolioImages[] $portfolioImages
 */
class Portfolio extends ActiveRecord {

    public $portfolioCategoriesValues;
    public $image1;
    public $image2;
    public $image3;

    public function init() {
        parent::init();
        if ($this->isNewRecord) {
            $this->portfolio_date = time();
        }
        $this->on(self::EVENT_AFTER_UPDATE, [$this, 'savePortfolioCategories']);
        $this->on(self::EVENT_AFTER_INSERT, [$this, 'savePortfolioCategories']);
    }
    
    public function afterFind() {
        $images = $this->portfolioImages;
        if(!empty($images)){
            foreach($images as $key => $image){
                $key = $key + 1;
                $attr = 'image'.$key;
                $this->$attr = $image->image;
            }
        }
        $this->portfolioCategoriesValues = $this->getPortfolioCategoriesValues();
        return parent::afterFind();
    }

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
        return 'portfolio';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
                [['slug', 'title', 'sub_title', 'client'], 'required'],
                [['description'], 'string'],
                [['visible', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
                [['slug', 'title', 'client', 'thumbnail'], 'string', 'max' => 255],
                [['sub_title', 'portfolio_link'], 'string', 'max' => 510],
//            [['created_by'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['created_by' => 'id']],
//            [['updated_by'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['updated_by' => 'id']],
            ['portfolio_date', 'date', 'timestampAttribute' => 'portfolio_date', 'format' => 'yyyy-MM-dd'],
                ['portfolio_date', 'default', 'value' => time()],
                [['portfolioCategoriesValues', 'image1', 'image2', 'image3'], 'safe']
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
            'sub_title' => 'Sub Title',
            'description' => 'Description',
            'client' => 'Client',
            'portfolio_date' => 'Date',
            'portfolio_link' => 'Link',
            'thumbnail' => 'Thumbnail',
            'visible' => 'Visible',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'portfolioCategoriesValues' => 'Category'
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
     * @return ActiveQuery
     */
    public function getPortfolioCategoryPortfolios() {
        return $this->hasMany(PortfolioCategoryPortfolio::className(), ['portfolio_id' => 'id']);
    }

    /**
     * @return ActiveQuery
     */
    public function getPortfolioImages() {
        return $this->hasMany(PortfolioImages::className(), ['portfolio_id' => 'id']);
    }

    public function getPortfolioCategories() {
        return $this->hasMany(PortfolioCategory::className(), ['id' => 'portfolio_category_id'])
                        ->viaTable('{{%portfolio_category_portfolio}}', ['portfolio_id' => 'id']);
    }

    public function savePortfolioCategories() {
        /** @var Post $owner */
        $owner = $this->owner;

        $post = Yii::$app->getRequest()->post('Post');
        $portfolioCategoriesValues = (isset($owner->portfolioCategoriesValues)) ? $owner->portfolioCategoriesValues : null;

        if (is_array($portfolioCategoriesValues)) {
            $owner->unlinkAll('portfolioCategories', true);

            foreach ($portfolioCategoriesValues as $portfolioCategory) {
                if (!ctype_digit($portfolioCategory) || !$linkTag = PortfolioCategory::findOne($portfolioCategory)) {
                    //below code doubt
                    $linkTag = new PortfolioCategory(['title' => (string) $portfolioCategory]);
                    $linkTag->setScenario(Tag::SCENARIO_AUTOGENERATED);
                    $linkTag->save();
                }

                $owner->link('portfolioCategories', $linkTag);
            }
        }

        //Images
        $images = [];
        if (isset($owner->image1) && $owner->image1 != '') {
            $images[] = $owner->image1;
        }
        if (isset($owner->image2) && $owner->image2 != '') {
            $images[] = $owner->image2;
        }
        if (isset($owner->image3) && $owner->image3 != '') {
            $images[] = $owner->image3;
        }

        if (!empty($images)) {
            //unlink
            PortfolioImages::deleteAll('portfolio_id = :id', [':id' => $owner->id]);
            //Insert images
            foreach ($images as $image) {
                $port_image = new PortfolioImages;
                $port_image->portfolio_id = $owner->id;
                $port_image->image = $image;
                $port_image->save();
            }
        }
    }

    /**
     * @inheritdoc
     * @return PortfolioQuery the active query used by this AR class.
     */
    public static function find() {
        return new PortfolioQuery(get_called_class());
    }
    
    public function getPortfolioCategoriesValues()
    {
        $ids = [];
        $categories = $this->portfolioCategories;
        foreach ($categories as $category) {
            $ids[] = $category->id;
        }

        return json_encode($ids);
    }

}
