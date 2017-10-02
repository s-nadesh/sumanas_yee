<?php

namespace common\modules\works\controllers;

use yeesoft\controllers\admin\BaseController;

/**
 * Default controller for the `works` module
 */
class DefaultController extends BaseController
{
    /**
     * Renders the index view for the module
     * @return string
     */
    
    public function init() {
        $this->modelClass = $this->module->worksModelClass;
        $this->modelSearchClass = $this->module->worksModelSearchClass;

        $this->indexView = $this->module->worksIndexView;
        $this->viewView = $this->module->worksViewView;
        $this->createView = $this->module->worksCreateView;
        $this->updateView = $this->module->worksUpdateView;

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
//    public function actionIndex()
//    {
//        return $this->render('index');
//    }
}
