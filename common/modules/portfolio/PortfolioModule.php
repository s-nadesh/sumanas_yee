<?php

namespace common\modules\portfolio;

use yii\base\Module;

/**
 * portfolio module definition class
 */
class PortfolioModule extends Module {

    /**
     * @inheritdoc
     */
    public $controllerNamespace = 'common\modules\portfolio\controllers';

    /**
     * Category model class
     *
     * @var string
     */
    public $categoryModelClass = 'common\modules\portfolio\models\PortfolioCategory';
    public $portfolioModelClass = 'common\modules\portfolio\models\Portfolio';

    /**
     * Category search model class
     *
     * @var string
     */
    public $categoryModelSearchClass = 'common\modules\portfolio\models\PortfolioCategorySearch';
//    public $portfolioModelSearchClass = 'common\modules\portfolio\models\PortfolioSearch';

    /**
     * Index category view
     *
     * @var string
     */
    public $categoryIndexView = 'index';
    public $portfolioIndexView = 'index';

    /**
     * View category view
     *
     * @var string
     */
    public $categoryViewView = 'view';
    public $portfolioViewView = 'view';

    /**
     * Create category view
     *
     * @var string
     */
    public $categoryCreateView = 'create';
    public $portfolioCreateView = 'create';

    /**
     * Update category view
     *
     * @var string
     */
    public $categoryUpdateView = 'update';
    public $portfolioUpdateView = 'update';
    public $thumbnailSize = 'medium';

    /**
     * @inheritdoc
     */
    public function init() {
        parent::init();

        // custom initialization code goes here
    }

}
