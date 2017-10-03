<?php

namespace common\modules\portfolio\models;

/**
 * This is the ActiveQuery class for [[PortfolioImages]].
 *
 * @see PortfolioImages
 */
class PortfolioImagesQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return PortfolioImages[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return PortfolioImages|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
