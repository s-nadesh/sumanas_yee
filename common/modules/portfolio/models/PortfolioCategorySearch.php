<?php

namespace common\modules\portfolio\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;

/**
 * PortfolioCategorySearch represents the model behind the search form about `common\modules\portfolio\models\PortfolioCategory`.
 */
class PortfolioCategorySearch extends PortfolioCategory {

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
                [['id', 'visible', 'created_at', 'updated_at', 'created_by', 'updated_by', 'left_border', 'right_border', 'depth'], 'integer'],
                [['slug', 'title', 'description'], 'safe'],
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
        $query = PortfolioCategory::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => Yii::$app->request->cookies->getValue('_grid_page_size', 20),
            ],
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
            'left_border' => $this->left_border,
            'right_border' => $this->right_border,
            'depth' => $this->depth,
        ]);

        $query->andFilterWhere(['like', 'slug', $this->slug])
                ->andFilterWhere(['like', 'title', $this->title])
                ->andFilterWhere(['like', 'description', $this->description]);

        return $dataProvider;
    }

}
