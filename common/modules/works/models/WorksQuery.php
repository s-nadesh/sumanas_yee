<?php

namespace common\modules\works\models;

/**
 * This is the ActiveQuery class for [[Works]].
 *
 * @see Works
 */
class WorksQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return Works[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return Works|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
