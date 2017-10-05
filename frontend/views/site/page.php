<?php
/* @var $this yii\web\View */

use yeesoft\comments\widgets\Comments;
use yeesoft\page\models\Page;
use yii\helpers\Html;

$this->title = $page->title;
$this->params['breadcrumbs'][] = $page->title;
?>

<?= $page->content ?>

<!-- Below code not needed -->
<?php if ($page->comment_status == Page::COMMENT_STATUS_OPEN): ?>
    <?php echo Comments::widget(['model' => Page::className(), 'model_id' => $page->id]); ?>
<?php endif; ?>