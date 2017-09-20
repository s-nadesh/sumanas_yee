<?php

use yii\widgets\LinkPager;

/* @var $this yii\web\View */

$this->title = 'Homepage';
?>

<div class="section " id="section0">
    <div class="section-arrow1"> <a  href="#" class="arrow2 bounce moveDown"> </a> </div>
    <div class="slider-cont"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/newslider.png"  alt=""> </div>
</div>

<div class="section section1" id="section1">
    <div class="container-fluid">
        <div class="slogan-img1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slogan-img1.png"  alt=""></div>
        <div class="slogan1"> <span> WHAT </span> <br/>
            MAKES US BETTER? </div>
        <div class="arrow1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt=""></div>
        <div class="question-cont">
            <div class="question1"> Curious to know? !</div>
        </div>
        <a href="#" class="moveDown">
            <div class="mouse-scroll">
                <div> <span class="down-arrow-1"></span> <span class="down-arrow-2"></span> <span class="down-arrow-3"></span> </div>
            </div>
        </a> </div>
</div>

<div class="section section2" id="section2">
    <div class="section-arrow1"> <a  href="#" class="arrow2 bounce moveDown"> </a> </div>
    <div class="container-fluid">
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <h2> <span> OUR </span> SERVICES </h2>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-8 col-lg-offset-1">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-lg-4 col-lg-4  sevice-part sevice-part1 ">
                    <h3> MOBILE App Development </h3>
                    <p> Find the finest of services in mobile application development, compatible with IOS, Android and windows. All that you wanted is at the tap of your finger</p>
                    <p> <a href="mobile-app.html" class="readmore1"> Read More... </a> </p>
                </div>
                <div class="col-xs-12 col-sm-4 col-lg-4 col-lg-4  sevice-part ">
                    <div class="row">
                        <div class="sevice-part2">
                            <h3> Web Design </h3>
                            <p> Your one stop-shop for great website designs, exotic logos, and awesome Graphic Designs. Ask for more and you will get more! </p>
                            <p> <a href="ui-ux-design.html" class="readmore1"> Read More... </a> </p>
                        </div>
                        <div class="sevice-part3">
                            <h3> Digital
                                Marketing </h3>
                            <p> This is the platformthat's makes your business catch the spotlight! We help your brand get the much needed attention and we make sure it is here to stay! </p>
                            <p> <a href="digital-marketing.html" class="readmore1"> Read More... </a> </p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-lg-4 col-lg-4  sevice-part ">
                    <div class="row">
                        <div class="sevice-part4">
                            <h3>Web 
                                Development</h3>
                            <p> We build custom applications that are tailor-made to fit your requirements. Have an idea? Share it with us and see it come to life with our technical expertise. </p>
                            <p> <a href="webdevelopment.html" class="readmore1"> Read More... </a> </p>
                        </div>
                        <div class="sevice-part5">
                            <h3> DATA Analytics </h3>
                            <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod incididunt ut labore .Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod incididu</p>
                            <p> <a href="dataanalytics.html" class="readmore1"> Read More... </a> </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section3" id="section3">
    <div class="container-fluid">
        <div class="slogan1 slogan2" > <span> WE ARE </span> <br/>
            WHO ARE BECAUSE OF OUR </div>
        <div class="arrow1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt=""></div>
        <div class="question-cont">
            <div class="question1"> Now you are definitely curious to know! </div>
        </div>
        <a href="#"  class="moveDown">
            <div class="mouse-scroll">
                <div> <span class="down-arrow-1"></span> <span class="down-arrow-2"></span> <span class="down-arrow-3"></span> </div>
            </div>
        </a> </div>
</div>

<div class="section section4" id="section4">
    <div class="section-arrow1"> <a  href="#" class="arrow2 bounce moveDown"> </a> </div>
    <div class="container-fluid">
        <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12">
            <h2> <span> OUR </span> Clients</h2>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 owl-theme"> <!-- Set up your HTML -->

            <div class="row">
                <div class="owl-carousel hover-demo " id="clients-carousel">
                    <?php /* @var $post yeesoft\post\models\Post */ ?>
                    <?php foreach ($posts as $post) : ?>
                        <?= $this->render('/items/post.php', ['post' => $post, 'page' => 'index']) ?>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section5" id="section5">
    <div class="container-fluid">
        <div class="slogan1 slogan3" > <span> OUR CLIENTS</span> <br/>
            LOVE US FOR OUR? </div>
        <div class="arrow1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt=""></div>
        <div class="question-cont">
            <div class="question1"> You know what? </div>
        </div>
        <a href="#"  class="moveDown">
            <div class="mouse-scroll">
                <div> <span class="down-arrow-1"></span> <span class="down-arrow-2"></span> <span class="down-arrow-3"></span> </div>
            </div>
        </a> </div>
</div>

<div class="section section6" id="section6">
    <div class="section-arrow1"> <a  href="#" class="arrow2 bounce moveDown"> </a> </div>
    <div class="container-fluid">
        <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
            <h2> <span> OUR </span> Works</h2>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 owl-theme"> <!-- Set up your HTML -->
                <div class="owl-carousel hover-demo " id="portfolio">
                    <div class="project-thumb-cont">
                        <div class="project-thumb1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/project1.jpg"  alt=""> </div>
                        <div class="project-thumb1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/project1.jpg"  alt=""> </div>
                    </div>
                    <div class="project-thumb-cont">
                        <div class="project-thumb1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/project1.jpg"  alt=""> </div>
                        <div class="project-thumb1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/project1.jpg"  alt=""> </div>
                    </div>
                    <div class="project-thumb-cont">
                        <div class="project-thumb1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/project1.jpg"  alt=""> </div>
                        <div class="project-thumb1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/project1.jpg"  alt=""> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section7" id="section7">
    <div class="container-fluid">
        <div class="slogan1 slogan4" > <span> OUR WORK</span> <br/>
            IS SO AWESOME BECAUSE OF OUR </div>
        <div class="arrow1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt=""></div>
        <div class="question-cont">
            <div class="question1"> You'll be excited to know! </div>
        </div>
        <a href="#" class="moveDown">
            <div class="mouse-scroll">
                <div> <span class="down-arrow-1"></span> <span class="down-arrow-2"></span> <span class="down-arrow-3"></span> </div>
            </div>
        </a> </div>
</div>

<div class="section section8" id="section8">
    <div class="section-arrow1"> <a  href="#" class="arrow2 bounce moveDown"> </a> </div>
    <div class="container-fluid">
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
            <h2> <span> OUR </span> Team</h2>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-7">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 owl-theme"> <!-- Set up your HTML -->
                <div class="owl-carousel hover-demo " id="team">
                    <div class="team-cont">
                        <div class="team">
                            <div class="team-hobby">
                                <ul>
                                    <li> Cricket </li>
                                    <li>Songs</li>
                                    <li>Burger</li>
                                    <li>Chicken</li>
                                </ul>
                            </div>
                            <div class="team-name"> MICHEAL SAM <br/>
                                <span> Tester </span> </div>
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/team1.jpg"  alt=""></div>
                        <div class="team">
                            <div class="team-hobby">
                                <ul>
                                    <li> Cricket </li>
                                    <li>Songs</li>
                                    <li>Burger</li>
                                    <li>Chicken</li>
                                </ul>
                            </div>
                            <div class="team-name"> MICHEAL SAM <br/>
                                <span> Tester </span> </div>
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/team1.jpg"  alt=""></div>
                    </div>
                    <div class="team-cont">
                        <div class="team">
                            <div class="team-hobby">
                                <ul>
                                    <li> Cricket </li>
                                    <li>Songs</li>
                                    <li>Burger</li>
                                    <li>Chicken</li>
                                </ul>
                            </div>
                            <div class="team-name"> MICHEAL SAM <br/>
                                <span> Tester </span> </div>
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/team1.jpg"  alt=""></div>
                        <div class="team">
                            <div class="team-hobby">
                                <ul>
                                    <li> Cricket </li>
                                    <li>Songs</li>
                                    <li>Burger</li>
                                    <li>Chicken</li>
                                </ul>
                            </div>
                            <div class="team-name"> MICHEAL SAM <br/>
                                <span> Tester </span> </div>
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/team1.jpg"  alt=""></div>
                    </div>
                    <div class="team-cont">
                        <div class="team">
                            <div class="team-hobby">
                                <ul>
                                    <li> Cricket </li>
                                    <li>Songs</li>
                                    <li>Burger</li>
                                    <li>Chicken</li>
                                </ul>
                            </div>
                            <div class="team-name"> MICHEAL SAM <br/>
                                <span> Tester </span> </div>
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/team1.jpg"  alt=""></div>
                        <div class="team">
                            <div class="team-hobby">
                                <ul>
                                    <li> Cricket </li>
                                    <li>Songs</li>
                                    <li>Burger</li>
                                    <li>Chicken</li>
                                </ul>
                            </div>
                            <div class="team-name"> MICHEAL SAM <br/>
                                <span> Tester </span> </div>
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/team1.jpg"  alt=""></div>
                    </div>
                    <div class="team-cont">
                        <div class="team">
                            <div class="team-hobby">
                                <ul>
                                    <li> Cricket </li>
                                    <li>Songs</li>
                                    <li>Burger</li>
                                    <li>Chicken</li>
                                </ul>
                            </div>
                            <div class="team-name"> MICHEAL SAM <br/>
                                <span> Tester </span> </div>
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/team1.jpg"  alt=""></div>
                        <div class="team">
                            <div class="team-hobby">
                                <ul>
                                    <li> Cricket </li>
                                    <li>Songs</li>
                                    <li>Burger</li>
                                    <li>Chicken</li>
                                </ul>
                            </div>
                            <div class="team-name"> MICHEAL SAM <br/>
                                <span> Tester </span> </div>
                            <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/team1.jpg"  alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section9" id="section9">
    <div class="container-fluid">
        <div class="slogan-img1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/slogan-img1.png"  alt=""></div>
        <div class="slogan1" > <span> WANT TO </span> <br/>
            KNOW MORE </div>
        <div class="arrow1"> <img src="<?php echo Yii::$app->view->theme->baseUrl ?>/images/arrow1.png" alt=""></div>
        <div class="question-cont">
            <div class="question1"> We know that you hadn't had enough! </div>
        </div>
        <a href="#" class="moveDown">
            <div class="mouse-scroll">
                <div> <span class="down-arrow-1"></span> <span class="down-arrow-2"></span> <span class="down-arrow-3"></span> </div>
            </div>
        </a> </div>
</div>

