<?php

namespace common\modules\works;

/**
 * works module definition class
 */
class WorksModule extends \yii\base\Module {

    /**
     * @inheritdoc
     */
    public $controllerNamespace = 'common\modules\works\controllers';
    public $worksModelClass = 'common\modules\works\models\Works';
    public $worksModelSearchClass = 'common\modules\works\models\search\WorksSearch';
    /**
     * @inheritdoc
     */

    /**
     * Index works view
     *
     * @var string
     */
    public $worksIndexView = 'index';

    /**
     * View works view
     *
     * @var string
     */
    public $worksViewView = 'view';

    /**
     * Create works view
     *
     * @var string
     */
    public $worksCreateView = 'create';

    /**
     * Update works view
     *
     * @var string
     */
    public $worksUpdateView = 'update';
    public $thumbnailSize = 'medium';

    /**
     * @inheritdoc
     */
    public function init() {
        parent::init();

        // custom initialization code goes here
    }

}
