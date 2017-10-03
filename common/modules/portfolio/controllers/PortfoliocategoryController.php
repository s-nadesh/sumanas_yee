<?php

namespace common\modules\portfolio\controllers;

use yeesoft\controllers\admin\BaseController;

/**
 * PortfoliocategoryController implements the CRUD actions for PortfolioCategory model.
 */
class PortfoliocategoryController extends BaseController {

    public function init() {
        $this->modelClass = $this->module->categoryModelClass;
        $this->modelSearchClass = $this->module->categoryModelSearchClass;

        $this->indexView = $this->module->categoryIndexView;
        $this->viewView = $this->module->categoryViewView;
        $this->createView = $this->module->categoryCreateView;
        $this->updateView = $this->module->categoryUpdateView;

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
