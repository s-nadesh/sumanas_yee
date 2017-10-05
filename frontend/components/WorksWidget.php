<?php

namespace frontend\components;

use common\modules\works\models\Works;
use yii\bootstrap\Widget;

class WorksWidget extends Widget {

    public $works = 'works';

    public function run() {
        $works = Works::find()
                ->where(['visible' => 1])
                ->all();
        return $this->render($this->works, [
                    'works' => $works,
        ]);
    }

}

?>