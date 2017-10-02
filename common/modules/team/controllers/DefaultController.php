<?php

namespace common\modules\team\controllers;

use yeesoft\controllers\admin\BaseController;

/**
 * Default controller for the `team` module
 */
class DefaultController extends BaseController {

    /**
     * Renders the index view for the module
     * @return string
     */
//    public function actionIndex()
//    {
//        return $this->render('index');
//    }

    public function init() {
        $this->modelClass = $this->module->teamModelClass;
        $this->modelSearchClass = $this->module->teamModelSearchClass;

        $this->indexView = $this->module->teamIndexView;
        $this->viewView = $this->module->teamViewView;
        $this->createView = $this->module->teamCreateView;
        $this->updateView = $this->module->teamUpdateView;

        parent::init();
    }

    protected function getRedirectPage($action, $model = null) {
        switch ($action) {
            case 'delete':
                return ['index'];
                break;
            case 'update':
                return ['update', 'id' => $model->id];
                break;
            case 'create':
                return ['update', 'id' => $model->id];
                break;
            default:
                return ['index'];
        }
    }

}
