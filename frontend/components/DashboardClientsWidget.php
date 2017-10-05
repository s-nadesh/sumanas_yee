<?php

namespace frontend\components;

use common\modules\clients\models\Clients;
use yii\bootstrap\Widget;

class DashboardClientsWidget extends Widget {

    public $dashboardclients = 'dashboardclients';

    public function run() {
        $clients = Clients::find()
                ->where(['visible' => 1])
                ->all();
        return $this->render($this->dashboardclients, [
                    'clients' => $clients,
        ]);
    }

}

?>