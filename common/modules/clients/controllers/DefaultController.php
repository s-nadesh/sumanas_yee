<?php

namespace common\modules\clients\controllers;

use yeesoft\controllers\admin\BaseController;

/**
 * Default controller for the `clients` module
 */
class DefaultController extends BaseController {

    /**
     * Renders the index view for the module
     * @return string
     */
    public function init() {
        $this->modelClass = $this->module->clientsModelClass;
        $this->modelSearchClass = $this->module->clientsModelSearchClass;

        $this->indexView = $this->module->clientsIndexView;
        $this->viewView = $this->module->clientsViewView;
        $this->createView = $this->module->clientsCreateView;
        $this->updateView = $this->module->clientsUpdateView;

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

//    public function actionIndex() {
//        return $this->render('index');
//    }

}
