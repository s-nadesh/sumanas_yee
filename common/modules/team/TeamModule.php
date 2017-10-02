<?php

namespace common\modules\team;

/**
 * team module definition class
 */
class TeamModule extends \yii\base\Module {

    /**
     * @inheritdoc
     */
    public $controllerNamespace = 'common\modules\team\controllers';
    public $teamModelClass = 'common\modules\team\models\Team';
    public $teamModelSearchClass = 'common\modules\team\models\search\TeamSearch';

    /**
     * Index team view
     *
     * @var string
     */
    public $teamIndexView = 'index';

    /**
     * View team view
     *
     * @var string
     */
    public $teamViewView = 'view';

    /**
     * Create team view
     *
     * @var string
     */
    public $teamCreateView = 'create';

    /**
     * Update team view
     *
     * @var string
     */
    public $teamUpdateView = 'update';
    public $thumbnailSize = 'medium';

    /**
     * @inheritdoc
     */
    public function init() {
        parent::init();

        // custom initialization code goes here
    }

}
