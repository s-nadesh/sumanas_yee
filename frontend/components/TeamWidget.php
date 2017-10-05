<?php

namespace frontend\components;

use common\modules\team\models\Team;
use yii\bootstrap\Widget;

class TeamWidget extends Widget {

    public $team = 'team';

    public function run() {
        $teams = Team::find()
                ->where(['visible' => 1])
                ->all();
        return $this->render($this->team, [
                    'teams' => $teams,
        ]);
    }

}

?>