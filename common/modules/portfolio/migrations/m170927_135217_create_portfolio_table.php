<?php

use yii\db\Migration;

class m170927_135217_create_portfolio_table extends Migration {

    const PORTFOLIO_TABLE = '{{%portfolio}}';
    const PORTFOLIO_IMAGES_TABLE = '{{%portfolio_images}}';
    const PORTFOLIO_CATEGORY_PORTFOLIO_TABLE = '{{%portfolio_category_portfolio}}';
    const PORTFOLIO_CATEGORY_TABLE = '{{%portfolio_category}}';

    public function safeUp() {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }

        //portfolio category Table
        $this->createTable(self::PORTFOLIO_CATEGORY_TABLE, [
            'id' => $this->primaryKey(),
            'slug' => $this->string(200)->notNull(),
            'title' => $this->string(255)->notNull(),
            'description' => $this->text(),
            'visible' => $this->integer()->notNull()->defaultValue(1)->comment('0-hidden,1-visible'),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'left_border' => $this->integer()->notNull(),
            'right_border' => $this->integer()->notNull(),
            'depth' => $this->integer()->notNull(),
                ], $tableOptions);

        $this->addForeignKey('fk_portfolio_category_created_by', self::PORTFOLIO_CATEGORY_TABLE, 'created_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');
        $this->addForeignKey('fk_portfolio_category_updated_by', self::PORTFOLIO_CATEGORY_TABLE, 'updated_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');

        $this->insert(self::PORTFOLIO_CATEGORY_TABLE, ['id' => 1, 'slug' => 'root', 'depth' => 0, 'created_at' => time(), 'visible' => 0, 'left_border' => 0, 'right_border' => 2147483647]);

        //portfolio Table
        $this->createTable(self::PORTFOLIO_TABLE, [
            'id' => $this->primaryKey(),
            'slug' => $this->string(255)->notNull(),
            'title' => $this->string(255)->notNull(),
            'sub_title' => $this->string(510)->notNull(),
            'description' => $this->text(),
            'client' => $this->string(255)->notNull(),
            'portfolio_date' => $this->integer(),
            'portfolio_link' => $this->string(510)->notNull(),
            'thumbnail' => $this->string(255),
            'visible' => $this->integer()->notNull()->defaultValue(1)->comment('0-hidden,1-visible'),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
                ], $tableOptions);

        $this->addForeignKey('fk_portfolio_created_by', self::PORTFOLIO_TABLE, 'created_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');
        $this->addForeignKey('fk_portfolio_updated_by', self::PORTFOLIO_TABLE, 'updated_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');

        //portfolio images Table
        $this->createTable(self::PORTFOLIO_IMAGES_TABLE, [
            'id' => $this->primaryKey(),
            'portfolio_id' => $this->integer(),
            'image' => $this->string(255),
                ], $tableOptions);

        $this->addForeignKey('fk_portfolio_images_portfolio_id', self::PORTFOLIO_IMAGES_TABLE, 'portfolio_id', self::PORTFOLIO_TABLE, 'id', 'CASCADE', 'CASCADE');


        //portfolio category portfolio Table
        $this->createTable(self::PORTFOLIO_CATEGORY_PORTFOLIO_TABLE, [
            'id' => $this->primaryKey(),
            'portfolio_id' => $this->integer(),
            'portfolio_category_id' => $this->integer(),
                ], $tableOptions);

        $this->addForeignKey('fk_portfolio_category_portfolio_id', self::PORTFOLIO_CATEGORY_PORTFOLIO_TABLE, 'portfolio_id', self::PORTFOLIO_TABLE, 'id', 'CASCADE', 'CASCADE');
        $this->addForeignKey('fk_portfolio_category_category_id', self::PORTFOLIO_CATEGORY_PORTFOLIO_TABLE, 'portfolio_category_id', self::PORTFOLIO_CATEGORY_TABLE, 'id', 'CASCADE', 'CASCADE');
    }

    public function safeDown() {
        $this->dropForeignKey('fk_portfolio_images_portfolio_id', self::PORTFOLIO_IMAGES_TABLE);
        $this->dropTable(self::PORTFOLIO_IMAGES_TABLE);

        $this->dropForeignKey('fk_portfolio_category_portfolio_id', self::PORTFOLIO_CATEGORY_PORTFOLIO_TABLE);
        $this->dropForeignKey('fk_portfolio_category_category_id', self::PORTFOLIO_CATEGORY_PORTFOLIO_TABLE);
        $this->dropTable(self::PORTFOLIO_CATEGORY_PORTFOLIO_TABLE);

        $this->dropForeignKey('fk_portfolio_created_by', self::PORTFOLIO_TABLE);
        $this->dropForeignKey('fk_portfolio_updated_by', self::PORTFOLIO_TABLE);
        $this->dropTable(self::PORTFOLIO_TABLE);

        $this->dropForeignKey('fk_portfolio_category_created_by', self::PORTFOLIO_CATEGORY_TABLE);
        $this->dropForeignKey('fk_portfolio_category_updated_by', self::PORTFOLIO_CATEGORY_TABLE);
        $this->dropTable(self::PORTFOLIO_CATEGORY_TABLE);
    }

    /*
      // Use up()/down() to run migration code without a transaction.
      public function up()
      {

      }

      public function down()
      {
      echo "m170927_135217_create_portfolio_category_table cannot be reverted.\n";

      return false;
      }
     */
}
