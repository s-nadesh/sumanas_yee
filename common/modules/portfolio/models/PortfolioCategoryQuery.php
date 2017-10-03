<?php

namespace common\modules\portfolio\models;

use paulzi\nestedintervals\NestedIntervalsQueryTrait;
use yii\db\ActiveQuery;

/**
 * This is the ActiveQuery class for [[PortfolioCategory]].
 *
 * @see PortfolioCategory
 */
class PortfolioCategoryQuery extends ActiveQuery
{
    
    use NestedIntervalsQueryTrait;
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return PortfolioCategory[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return PortfolioCategory|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
