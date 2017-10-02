<?php

namespace frontend\components;

use yii\base\Widget;
use yii\helpers\Html;
use common\modules\works\models\search\WorksSearch;
use common\modules\works\models\Works;
use Yii;

class WorksWidget extends \yii\bootstrap\Widget {

    public $works = 'works';

    public function run() {
        $works = \common\modules\works\models\Works::find()
                ->where(['visible'=>1])
                ->all();
        return $this->render($this->works, [
                    'works' => $works,
        ]);
    }

}

?>