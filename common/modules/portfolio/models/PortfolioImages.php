<?php

namespace common\modules\portfolio\models;

use Yii;

/**
 * This is the model class for table "portfolio_images".
 *
 * @property integer $id
 * @property integer $portfolio_id
 * @property string $image
 *
 * @property Portfolio $portfolio
 */
class PortfolioImages extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'portfolio_images';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['portfolio_id'], 'integer'],
            [['image'], 'string', 'max' => 255],
            [['portfolio_id'], 'exist', 'skipOnError' => true, 'targetClass' => Portfolio::className(), 'targetAttribute' => ['portfolio_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'portfolio_id' => 'Portfolio ID',
            'image' => 'Image',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPortfolio()
    {
        return $this->hasOne(Portfolio::className(), ['id' => 'portfolio_id']);
    }

    /**
     * @inheritdoc
     * @return PortfolioImagesQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new PortfolioImagesQuery(get_called_class());
    }
}
