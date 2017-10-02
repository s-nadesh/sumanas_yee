<?php

namespace common\modules\team\models\search;

use common\modules\team\models\Team;
use yii\base\Model;
use yii\data\ActiveDataProvider;

/**
 * TeamSearch represents the model behind the search form about `common\modules\team\models\Team`.
 */
class TeamSearch extends Team {

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
                [['id', 'visible', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
                [['slug', 'title', 'designation', 'hobbies1', 'hobbies2', 'hobbies3', 'hobbies4', 'hobbies5', 'thumbnail'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios() {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params) {
        $query = Team::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'visible' => $this->visible,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
        ]);

        $query->andFilterWhere(['like', 'slug', $this->slug])
                ->andFilterWhere(['like', 'title', $this->title])
                ->andFilterWhere(['like', 'designation', $this->designation])
                ->andFilterWhere(['like', 'hobbies1', $this->hobbies1])
                ->andFilterWhere(['like', 'hobbies2', $this->hobbies2])
                ->andFilterWhere(['like', 'hobbies3', $this->hobbies3])
                ->andFilterWhere(['like', 'hobbies4', $this->hobbies4])
                ->andFilterWhere(['like', 'hobbies5', $this->hobbies5])
                ->andFilterWhere(['like', 'thumbnail', $this->thumbnail]);

        return $dataProvider;
    }

}
