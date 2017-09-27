<?php

namespace frontend\components;

use yii\base\Widget;
use yii\helpers\Html;
use common\modules\clients\models\search\ClientsSearch;
use common\modules\clients\models\Clients;
use Yii;

class DashboardClientsWidget extends \yii\bootstrap\Widget {

    public $dashboardclients = 'dashboardclients';

    public function run() {
        $clients = Clients::find()->where(['visible' => 1])
                ->all();
        return $this->render($this->dashboardclients, [
                    'clients' => $clients,
        ]);
    }

}

?>