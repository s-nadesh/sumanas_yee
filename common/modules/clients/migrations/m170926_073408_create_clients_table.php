<?php

use yii\db\Migration;

class m170926_073408_create_clients_table extends Migration {

    const CLIENTS_TABLE = '{{%clients}}';

    public function safeUp() {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }

        $this->createTable(self::CLIENTS_TABLE, [
            'id' => $this->primaryKey(),
            'slug' => $this->string(200)->notNull(),
            'title' => $this->string(255)->notNull(),
            'description' => $this->text(),
            'thumbnail' => $this->string(255),
            'visible' => $this->integer()->notNull()->defaultValue(1)->comment('0-hidden,1-visible'),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
                ], $tableOptions);
        
        $this->addForeignKey('fk_clients_created_by', self::CLIENTS_TABLE, 'created_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');
        $this->addForeignKey('fk_clients_updated_by', self::CLIENTS_TABLE, 'updated_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');
    }

    public function safeDown() {
        $this->dropForeignKey('fk_clients_created_by', self::CLIENTS_TABLE);
        $this->dropForeignKey('fk_clients_updated_by', self::CLIENTS_TABLE);

        $this->dropTable(self::CLIENTS_TABLE);
    }

    /*
      // Use up()/down() to run migration code without a transaction.
      public function up()
      {

      }

      public function down()
      {
      echo "m170926_073408_create_clients_table cannot be reverted.\n";

      return false;
      }
     */
}
