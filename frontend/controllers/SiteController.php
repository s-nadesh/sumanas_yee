<?php

use common\modules\portfolio\models\Portfolio;
use common\modules\portfolio\models\PortfolioCategory;
use frontend\actions\PageAction;
use frontend\actions\PortfolioAction;
use frontend\actions\PostAction;
use frontend\models\CareersForm;
use frontend\models\ContactForm;
use yeesoft\controllers\BaseController;
use yeesoft\page\models\Page;
use yeesoft\post\models\Post;
use yii\base\InvalidRouteException;
use yii\data\Pagination;
use yii\web\NotFoundHttpException;
use yii\web\UploadedFile;

namespace frontend\controllers;

/**
 * Site controller
 */
class SiteController extends BaseController {

    public $freeAccess = true;

    /**
     * @inheritdoc
     */
    public function actions() {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex($slug = 'index') {
        // display home page
        if (empty($slug) || $slug == 'index') {
            $query = Post::find()->where(['status' => Post::STATUS_PUBLISHED]);
            $countQuery = clone $query;

            $pagination = new Pagination([
                'totalCount' => $countQuery->count(),
                'defaultPageSize' => Yii::$app->settings->get('reading.page_size', 10),
            ]);

            $posts = $query->orderBy('published_at DESC')->offset($pagination->offset)
                    ->limit($pagination->limit)
                    ->all();

            return $this->render('index', [
                        'posts' => $posts,
                        'pagination' => $pagination,
            ]);
        }
        //try to display action from controller
        try {
            return $this->runAction($slug);
        } catch (InvalidRouteException $ex) {
            
        }

        //try to display static page from datebase
        $page = Page::getDb()->cache(function ($db) use ($slug) {
            return Page::findOne(['slug' => $slug, 'status' => Page::STATUS_PUBLISHED]);
        }, -1);
        if ($page) {
            $pageAction = new PageAction($slug, $this, [
                'slug' => $slug,
                'page' => $page,
                'view' => $page->view,
                'layout' => $page->layout,
            ]);

            return $pageAction->run();
        }

        //try to display Portfolio from datebase
        $portfolio = Portfolio::getDb()->cache(function ($db) use ($slug) {
            return Portfolio::findOne(['slug' => $slug, 'visible' => '1']);
        }, -1);

        $related_projects = Portfolio::getDb()->cache(function ($db) {
            return Portfolio::find()->where(['visible' => '1'])->limit(3)->orderBy('rand()')->all();
        }, -1);
        if ($portfolio && $related_projects) {
            $portfolioAction = new PortfolioAction($slug, $this, [
                'slug' => $slug,
                'portfolio' => $portfolio,
                'related_projects' => $related_projects,
            ]);

            return $portfolioAction->run();
        }

        //try to display post from datebase
        $post = Post::getDb()->cache(function ($db) use ($slug) {
            return Post::findOne(['slug' => $slug, 'status' => Post::STATUS_PUBLISHED]);
        }, 3600);

        if ($post) {
            $postAction = new PostAction($slug, $this, [
                'slug' => $slug,
                'post' => $post,
                'view' => $post->view,
                'layout' => $post->layout,
            ]);

            return $postAction->run();
        }

        //if nothing suitable was found then throw 404 error
        throw new NotFoundHttpException('Page not found.');
    }

    /**
     * Displays contact page.
     *
     * @return mixed
     */
    public function actionContact() {
        $this->layout = "@app/views/layouts/inner";
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail(Yii::$app->settings->get('general.email'))) {
                Yii::$app->session->setFlash('success', 'Thank you for contacting us. We will respond to you as soon as possible.');
            } else {
                Yii::$app->session->setFlash('error', 'There was an error sending email.');
            }

            return $this->refresh();
        } else {
            return $this->render('contact', [
                        'model' => $model,
            ]);
        }
    }

    public function actionCareers() {
        $this->layout = "@app/views/layouts/inner_get_in_touch";
        $model = new CareersForm();
        if ($model->load(Yii::$app->request->post())) {
            $model->file = UploadedFile::getInstance($model, 'file');
            if ($model->file) {
                $path = Yii::getAlias('@frontend') . '/web/uploads/';
                $model->file->saveAs($path . $model->file);
            }
            if ($model->sendEmail(Yii::$app->settings->get('general.email'))) {
                Yii::$app->session->setFlash('success', 'Thank you for contacting us. We will respond to you as soon as possible.');
            } else {
                Yii::$app->session->setFlash('error', 'There was an error sending email.');
            }

            return $this->refresh();
        } else {
            return $this->render('careers', [
                        'model' => $model,
            ]);
        }
    }

    public function actionPortfolio() {
        $this->layout = "@app/views/layouts/inner_clients_layout";
        $port_category = PortfolioCategory::find()->where(['visible' => 1])
                ->all();
        $portfolio = Portfolio::find()
                ->where(['visible' => 1])
                ->limit(3)
                ->all();

        return $this->render('portfolio', [
                    'port_category' => $port_category,
                    'portfolio' => $portfolio,
        ]);
    }

    public function actionLoadmoreportfolio() {
        $portfolio = Portfolio::find()
                ->where(['visible' => 1])
                ->offset(3)
                ->all();
        return $this->renderPartial('moreportfolio', [
                    'portfolio' => $portfolio,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return mixed
     */
    public function actionAbout() {
        $this->layout = "@app/views/layouts/inner";
        return $this->render('about');
    }

}
