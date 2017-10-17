<?php

use yii\db\Migration;

class m171013_092816_add_portfolio_order_column_to_create_portfolio_table extends Migration
{
    public function safeUp()
    {
                $this->addColumn('portfolio', 'portfolio_order', $this->integer()->after('visible'));
    }

    public function safeDown()
    {
        echo "m171013_092816_add_portfolio_order_column_to_create_portfolio_table cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m171013_092816_add_portfolio_order_column_to_create_portfolio_table cannot be reverted.\n";

        return false;
    }
    */
}
