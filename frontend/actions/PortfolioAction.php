<?php

namespace frontend\actions;

use yii\web\ViewAction;

/**
 * Description of PostAction
 */
class PortfolioAction extends ViewAction
{
    public $slug;
    public $portfolio;
    public $related_projects;
    public $view = 'portfolio_view';

    public function run()
    {
        $this->controller->action = $this;
        return $this->controller->renderPartial($this->view, ['portfolio' => $this->portfolio,'related_projects' => $this->related_projects]);
    }
}