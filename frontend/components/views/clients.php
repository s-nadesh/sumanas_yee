<?php

use yii\helpers\Url;
use yii\helpers\Html;

/* @var $post yeesoft\post\models\Post */

//$page = (isset($page)) ? $page : 'posts';

?>
<div class="item <?php echo !$first ? "active":"";?>">
<div class="profile-circle"> <img src="<?php echo $post['thumbnail']; ?>" alt="Martine Breton"></div>
<blockquote>
    <p><?= $post['description'] ?></p>
    <p> <strong> <?= $post['title'] ?> </strong></p>
</blockquote>
</div>
<?php $first = true;?>




