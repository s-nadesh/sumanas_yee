<?php

namespace frontend\components;

use common\modules\clients\models\Clients;
use yii\bootstrap\Widget;

class ClientsWidget extends Widget {

    public $layout = 'layout';
//    public $clients = 'clients';

    public function run() {
        $posts = Clients::find()->where(['visible'=>1])
                ->all();
        return $this->render($this->layout, [
                    'posts' => $posts,
//                    'clients' => $this->clients,
        ]);
    }

}

?>