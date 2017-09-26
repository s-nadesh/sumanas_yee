<?php

namespace common\modules\clients;

/**
 * clients module definition class
 */
class ClientsModule extends \yii\base\Module
{
    /**
     * @inheritdoc
     */
    public $controllerNamespace = 'common\modules\clients\controllers';
    
    public $clientsModelClass = 'common\modules\clients\models\Clients';
    
    public $clientsModelSearchClass = 'common\modules\clients\models\search\ClientsSearch';
    
    /**
     * Index clients view
     *
     * @var string
     */
    public $clientsIndexView = 'index';

    /**
     * View clients view
     *
     * @var string
     */
    public $clientsViewView = 'view';

    /**
     * Create clients view
     *
     * @var string
     */
    public $clientsCreateView = 'create';

    /**
     * Update clients view
     *
     * @var string
     */
    public $clientsUpdateView = 'update';
    
    
    public $thumbnailSize = 'medium';

    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();

        // custom initialization code goes here
    }
}
