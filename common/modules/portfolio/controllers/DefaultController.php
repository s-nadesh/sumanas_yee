<?php

namespace common\modules\portfolio\controllers;

use yeesoft\controllers\admin\BaseController;

/**
 * Default controller for the `portfolio` module
 */
class DefaultController extends BaseController {

    public function init() {
        $this->modelClass = $this->module->portfolioModelClass;
//        $this->modelSearchClass = $this->module->portfolioModelSearchClass;

        $this->indexView = $this->module->portfolioIndexView;
        $this->viewView = $this->module->portfolioViewView;
        $this->createView = $this->module->portfolioCreateView;
        $this->updateView = $this->module->portfolioUpdateView;

        parent::init();
    }

    protected function getRedirectPage($action, $model = null) {
        switch ($action) {
            case 'update':
                return ['update', 'id' => $model->id];
                break;
            case 'create':
                return ['update', 'id' => $model->id];
                break;
            default:
                return parent::getRedirectPage($action, $model);
        }
    }

}
