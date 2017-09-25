<?php

namespace frontend\components;

use yii\base\Widget;
use yii\helpers\Html;
use yeesoft\post\models\search\PostSearch;
use yeesoft\post\models\Post;
use Yii;

class ClientsWidget extends \yii\bootstrap\Widget {

    public $layout = 'layout';
    public $clients = 'clients';

    public function run() {
        $posts = Post::find()
                ->active()
                ->all();
        return $this->render($this->layout, [
                    'posts' => $posts,
                    'clients' => $this->clients,
        ]);
    }

}

?>