<?php

use yii\bootstrap\ActiveForm;

$title = "Sumanas Tech Career Opportunities";
?>
<div class="inner-page-heading ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h1>Together at Sumanas! </h1>
                <span>We're an Interactive, tightly knit and connected bunch of creative minds!</span> </div>
        </div>
    </div>
</div>
<div class=" ui-ux-cont">
    <div class="container-fluid">
        <div class="row">
            <!--<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
              <div class="mobile-app career">
                <h2> The workplace </h2>
                <p> Together we work smart; Code, design and write great content.We brainstorm round-the-clock; we craft technology with passion and deliver the best in town..... And well, this is US!</p>
                <p> You get to work with the best tech heads in business, and we alsoopen up great opportunities to help you explore your inner potential. </p>
              </div>
            </div>-->
            <div class="jobs-list-cont">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 job-list-txt">
                    <h3> What are we looking for? </h3>
                    <p> If you are an Individual with passion for technologies and building something new, then Sumanas is just the right place for you!</p>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 job1 floating buttons">
                    <div class="job1-cont"> <span class="job-count"> 2 </span> <a href="" class="" data-toggle="modal" data-target="#myModal">AngularJS front end Developer</a> </div>
                    <div class="job1-outter"> <img src="/themes/st_theme/images/flame.png" alt="AngularJS front end developer"></div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 job1 job3 floating2">
                    <div class="job1-cont"> <span class="job-count"> 4 </span> <a href="" data-toggle="modal" data-target="#myModal2">Python / Django Developer</a> </div>
                    <div class="job1-outter"> <img src="/themes/st_theme/images/flame.png" alt="Python / Django developer"></div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 job1 job2 floating">
                    <div class="job1-cont"> <span class="job-count"> 1 </span> <a href="" data-toggle="modal" data-target="#myModal3"> Project Manager </a> </div>
                    <div class="job1-outter"> <img src="/themes/st_theme/images/flame.png" alt="Project Manager"></div>
                </div>
                <div class="jobs">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 job1 job2 floating">
                        <div class="job1-cont"> <span class="job-count"> 1 </span> <a href="" data-toggle="modal" data-target="#myModal4"> Business Development Executive </a> </div>
                        <div class="job1-outter"> <img src="/themes/st_theme/images/flame.png" alt="Business Development Executive"></div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 job1 floating">
                        <div class="job1-cont"> <span class="job-count"> 1 </span> <a href="" data-toggle="modal" data-target="#myModal5"> Full stack Developer </a> </div>
                        <div class="job1-outter"> <img src="/themes/st_theme/images/flame.png" alt="Full stack developer"></div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> <img src="/themes/st_theme/images/join.png" alt="Join us at Sumanas"></div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"> AngularJS front end Developer</h4>
            </div>
            <div class="modal-body">
                <h3> We are on the lookout for…. </h3>
                <p> Must have <strong>2 - 4 years</strong> of hands on experience in Frontend development</p>
                <p> - Strong visual or interaction design skills</p>
                <p>- Experience in HTML5, CSS3, JavaScript, jQuery, Bootstrap</p>
                <p>- Exposure of frameworks such as Angular js. is mandatory</p>

                <strong>Main Tasks & Responsibilities :</strong>

                <p>- Develop intuitive front end\web portals</p>
                <p>- Contribution across the entire development life cycle requirement gathering, build and support</p>
                <p>- Working directly with product managers and clients to conceptualize & build products</p>
                <p>- Excellent written and verbal communications in order to work with multi-national team</p>
                <p>- Good analytical aptitude and attention to detail</p>
                <p>- Ability to Multi-task in a fast-paced, deadline driven environment.</p>
                <h3 style="text-align: center"> Apply Now </h3>
                <?php
                $form = ActiveForm::begin(['id' => 'career_form1', 'enableAjaxValidation' => false, 'enableClientValidation' => false,
                            'enableClientScript' => false,
                            'options' => [
                                'name' => 'myform',
                                'autocomplete' => 'off',
                                'enctype' => 'multipart/form-data',
//                                    'validationUrl' => Url::toRoute('contact-us/create')
                            ],
                ]);
                ?>
                <div class="row">
                    <?= $form->field($model, 'hidden1')->hiddenInput(['value' => 'AngularJS front end Developer'])->label(false); ?>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'name')->textInput(['placeholder' => 'Name', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'email')->textInput(['placeholder' => 'Email', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'phone')->textInput(['placeholder' => 'Phone', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'source_to_find')->textInput(['placeholder' => 'How Did You Hear About Us', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'cover_letter')->textarea(['placeholder' => 'Cover Letter', 'class' => 'form-control cover-letter', 'rows' => '6'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'file')->fileInput(['class' => 'form-control file'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div id="captchaContainer1"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" name="submit1" class="formComplete btn btn1">
                        <i class="fa fa-paper-plane" aria-hidden="true"></i> Submit
                    </button>
                    <button class="btn btn1 hide formProgress">Sending...</button>
                    <div class="h4 text-center hide msgSuccess">
                        Thank you for contacting us. We will respond to you as soon as possible.
                    </div>
                    <div class="h4 text-center hide msgError">
                        There was an error sending email.
                    </div>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"> Python / Django Developer</h4>
            </div>
            <div class="modal-body">
                <h3> We are on the lookout for…. </h3>
                <p> Must have <strong>2 - 4 years</strong> of hands on experience in Python development</p>
                <p>- Must have Good python programming skill especially in Pandas, Numpy</p>
                <p>- Web based development/Web Services using Python - Flask,  Django and similar libraries</p>
                <p>- Good understanding of Data science and Analytics</p>
                <p>- Experience in Sci-Kit learn</p>
                <p>- Good in Statistics and Linear Algebra</p>
                <p>- Optional Mathlab Understanidng</p>

                <strong>Main Tasks & Responsibilities :</strong>

                <p>- Develop intuitive front end\web portals</p>
                <p>- contribution across the entire development life cycle requirement gathering, build and support</p>
                <p>- Working directly with product managers and clients to conceptualize & build products</p>
                <p>- Excellent written and verbal communications in order to work with multi-national team</p>
                <p>- Good analytical aptitude and attention to detail</p>
                <p>- Ability to Multi-task in a fast-paced, deadline driven environment.</p>
                <h3 style="text-align: center"> Apply Now </h3>
                <?php
                $form = ActiveForm::begin(['id' => 'career_form2', 'enableAjaxValidation' => false, 'enableClientValidation' => false,
                            'enableClientScript' => false,
                            'options' => [
                                'name' => 'myform',
                                'autocomplete' => 'off',
                                'enctype' => 'multipart/form-data',
//                                    'validationUrl' => Url::toRoute('contact-us/create')
                            ],
                ]);
                ?>
                <div class="row">
                    <?= $form->field($model, 'hidden1')->hiddenInput(['value' => 'Python / Django Developer'])->label(false); ?>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'name')->textInput(['placeholder' => 'Name', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'email')->textInput(['placeholder' => 'Email', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'phone')->textInput(['placeholder' => 'Phone', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'source_to_find')->textInput(['placeholder' => 'How Did You Hear About Us', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'cover_letter')->textarea(['placeholder' => 'Cover Letter', 'class' => 'form-control cover-letter', 'rows' => '6'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'file')->fileInput(['class' => 'form-control file'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div id="captchaContainer2"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" name="submit2" class="formComplete btn btn1">
                        <i class="fa fa-paper-plane" aria-hidden="true"></i> Submit
                    </button>
                    <button class="btn btn1 hide formProgress">Sending...</button>
                    <div class="h4 text-center hide msgSuccess">
                        Thank you for contacting us. We will respond to you as soon as possible.
                    </div>
                    <div class="h4 text-center hide msgError">
                        There was an error sending email.
                    </div>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"> Project Manager</h4>
            </div>
            <div class="modal-body">
                <h3> We are on the lookout for…. </h3>
                <strong>Main Tasks & Responsibilities :</strong>
                <p>- Project manager must have solid technical background, with understanding or hands-on experience in software development and Open source technologies.</p>
                <p>- Ability to translate business requirements into technical project plans and should be able to prioritize multiple projects and tasks based on business needs.</p>
                <p>- Should be able to manage and lead people to complete projects and accomplish company goals.</p>
                <p>- Project Manager with good experience in development or product implementation projects.</p>
                <p>- Leading and participating in meetings at the operational and project level, and providing continuous feedback on project status.</p>
                <p>- Should be able to mentor and guide the team technically.</p>
                <p>- Manage high priority tasks, enhancements and/or bugs related to assigned projects.</p>
                <p>- Manage/develop the strategic planning for a variety of key projects.</p>
                <p>- Create and maintain comprehensive project documentation.</p>
                <p>- Should have Excellent communication skills and work well with Team.</p>
                <p>- Should have good issue resolution and people management skills.</p>
                <p>- Convert key project strategies into actionable, individual tasks, activities and assignments.</p>
                <p>- Build and maintain working relationships with team members, vendors, and other departments involved in the projects.</p>
                <h3 style="text-align: center"> Apply Now </h3>
                <?php
                $form = ActiveForm::begin(['id' => 'career_form3', 'enableAjaxValidation' => false, 'enableClientValidation' => false,
                            'enableClientScript' => false,
                            'options' => [
                                'name' => 'myform',
                                'autocomplete' => 'off',
                                'enctype' => 'multipart/form-data',
//                                    'validationUrl' => Url::toRoute('contact-us/create')
                            ],
                ]);
                ?>
                <div class="row">
                    <?= $form->field($model, 'hidden1')->hiddenInput(['value' => 'Project Manager'])->label(false); ?>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'name')->textInput(['placeholder' => 'Name', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'email')->textInput(['placeholder' => 'Email', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'phone')->textInput(['placeholder' => 'Phone', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'source_to_find')->textInput(['placeholder' => 'How Did You Hear About Us', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'cover_letter')->textarea(['placeholder' => 'Cover Letter', 'class' => 'form-control cover-letter', 'rows' => '6'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'file')->fileInput(['class' => 'form-control file'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div id="captchaContainer3"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" name="submit3" class="formComplete btn btn1">
                        <i class="fa fa-paper-plane" aria-hidden="true"></i> Submit
                    </button>
                    <button class="btn btn1 hide formProgress">Sending...</button>
                    <div class="h4 text-center hide msgSuccess">
                        Thank you for contacting us. We will respond to you as soon as possible.
                    </div>
                    <div class="h4 text-center hide msgError">
                        There was an error sending email.
                    </div>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"> Business Development Executive</h4>
            </div>
            <div class="modal-body">
                <h3> We are on the lookout for…. </h3>
                <p>- Business Analyst with good experience in handling teams and projects in web and mobile development.</p>
                <strong>Job Responsibilities :</strong>
                <p>- Leading Multiple Project Teams</p>
                <p>- Responsible for Project Delivery</p>
                <p>- Training Teams</p>
                <p>- Leading and Motivating Team Members</p>
                <p>- Experience in Managing IT Projects.</p>
                <p>- Have in depth knowledge of programming skills.</p>
                <p>- Experience in Web or Mobile apps development would be preferred (we work extensively in PHP/MySQL)</p>

                <strong>Desired Candidate Profile:</strong>

                <p>- Should possess excellent verbal & written communication skills</p>
                <p>- Should be a leader</p>
                <p>- Can-do attitude</p>
                <p>- Negotiation Skills, Problem Solving attitude</p>
                <p>- Capable of handling multiple responsibilities independently</p>
                <p>- A go-getter & a leader</p>
                <p>- A dynamic person with a drive to achieve numbers and lead their team</p>
                <h3 style="text-align: center"> Apply Now </h3>
                <?php
                $form = ActiveForm::begin(['id' => 'career_form4', 'enableAjaxValidation' => false, 'enableClientValidation' => false,
                            'enableClientScript' => false,
                            'options' => [
                                'name' => 'myform',
                                'autocomplete' => 'off',
                                'enctype' => 'multipart/form-data',
//                                    'validationUrl' => Url::toRoute('contact-us/create')
                            ],
                ]);
                ?>
                <div class="row">
                    <?= $form->field($model, 'hidden1')->hiddenInput(['value' => 'Business Development Executive'])->label(false); ?>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'name')->textInput(['placeholder' => 'Name', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'email')->textInput(['placeholder' => 'Email', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'phone')->textInput(['placeholder' => 'Phone', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'source_to_find')->textInput(['placeholder' => 'How Did You Hear About Us', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'cover_letter')->textarea(['placeholder' => 'Cover Letter', 'class' => 'form-control cover-letter', 'rows' => '6'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'file')->fileInput(['class' => 'form-control file'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div id="captchaContainer4"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" name="submit3" class="formComplete btn btn1">
                        <i class="fa fa-paper-plane" aria-hidden="true"></i> Submit
                    </button>
                    <button class="btn btn1 hide formProgress">Sending...</button>
                    <div class="h4 text-center hide msgSuccess">
                        Thank you for contacting us. We will respond to you as soon as possible.
                    </div>
                    <div class="h4 text-center hide msgError">
                        There was an error sending email.
                    </div>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"> Full stack Developer</h4>
            </div>            




            <div class="modal-body">
                <h3> We are on the lookout for…. </h3>
                <p>- Maintain quality and ensure responsiveness of applications.</p>
                <p>- Collaborate with the rest of the engineering team to design and launch new features.</p>
                <p>- Maintain code integrity and organization.</p>
                <p>- Understanding and implementation of security and data protection.</p>
                <p>- Highly experienced with back-end programming languages {{Ex: PHP, Python, Java, JavaScript etc}}</p>
                <p>- Development experience for both mobile and backend.</p>
                <p>- Experience with cloud APIs and SDK.</p>
                <p>- Knowledge of code versioning tools {{such as Git}}.</p>
                <strong>Main Tasks & Responsibilities : </strong>
                <p>- Develop intuitive front end\web portals</p>
                <p>- contribution across the entire development life cycle requirement gathering, build and support</p>
                <p>- Working directly with product managers and clients to conceptualize & build products</p>
                <p>- Excellent written and verbal communications in order to work with multi-national team</p>
                <p>- Good analytical aptitude and attention to detail</p>
                <p>- Ability to Multi-task in a fast-paced, deadline driven environment.</p>
                <h3 style="text-align: center"> Apply Now </h3>
                <?php
                $form = ActiveForm::begin(['id' => 'career_form5', 'enableAjaxValidation' => false, 'enableClientValidation' => false,
                            'enableClientScript' => false,
                            'options' => [
                                'name' => 'myform',
                                'autocomplete' => 'off',
                                'enctype' => 'multipart/form-data',
//                                    'validationUrl' => Url::toRoute('contact-us/create')
                            ],
                ]);
                ?>
                <div class="row">
                    <?= $form->field($model, 'hidden1')->hiddenInput(['value' => 'Full stack Developer'])->label(false); ?>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'name')->textInput(['placeholder' => 'Name', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'email')->textInput(['placeholder' => 'Email', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'phone')->textInput(['placeholder' => 'Phone', 'class' => 'form-control'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <?= $form->field($model, 'source_to_find')->textInput(['placeholder' => 'How Did You Hear About Us', 'class' => 'form-control'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'cover_letter')->textarea(['placeholder' => 'Cover Letter', 'class' => 'form-control cover-letter', 'rows' => '6'])->label(false) ?>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'file')->fileInput(['class' => 'form-control file'])->label(false) ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div id="captchaContainer5"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" name="submit3" class="formComplete btn btn1">
                        <i class="fa fa-paper-plane" aria-hidden="true"></i> Submit
                    </button>
                    <button class="btn btn1 hide formProgress">Sending...</button>
                    <div class="h4 text-center hide msgSuccess">
                        Thank you for contacting us. We will respond to you as soon as possible.
                    </div>
                    <div class="h4 text-center hide msgError">
                        There was an error sending email.
                    </div>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>