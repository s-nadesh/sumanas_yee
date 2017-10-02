<?php

use yii\db\Migration;

class m170928_102047_create_team_table extends Migration {

    const TEAM_TABLE = '{{%team}}';

    public function safeUp() {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }

        $this->createTable(self::TEAM_TABLE, [
            'id' => $this->primaryKey(),
            'slug' => $this->string(200)->notNull(),
            'title' => $this->string(255)->notNull(),
            'designation' => $this->text(),
            'hobbies1' => $this->string(255)->notNull(),
            'hobbies2' => $this->string(255)->notNull(),
            'hobbies3' => $this->string(255)->notNull(),
            'hobbies4' => $this->string(255)->notNull(),
            'hobbies5' => $this->string(255)->notNull(),
            'thumbnail' => $this->string(255),
            'visible' => $this->integer()->notNull()->defaultValue(1)->comment('0-hidden,1-visible'),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
                ], $tableOptions);

        $this->addForeignKey('fk_team_created_by', self::TEAM_TABLE, 'created_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');
        $this->addForeignKey('fk_team_updated_by', self::TEAM_TABLE, 'updated_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');
    }

    public function safeDown() {
        $this->dropForeignKey('fk_team_created_by', self::TEAM_TABLE);
        $this->dropForeignKey('fk_team_updated_by', self::TEAM_TABLE);

        $this->dropTable(self::TEAM_TABLE);
    }

    /*
      // Use up()/down() to run migration code without a transaction.
      public function up()
      {

      }

      public function down()
      {
      echo "m170928_102047_create_team_table cannot be reverted.\n";

      return false;
      }
     */
}
