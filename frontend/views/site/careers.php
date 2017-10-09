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
                    <div class="job1-cont"> <span class="job-count"> 1 </span> <a href="" class="" data-toggle="modal" data-target="#myModal">UI/UX DESIGNERS</a> </div>
                    <div class="job1-outter"> <img src="/themes/st_theme/images/flame.png" alt="UI/UX DESIGNERS"></div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 job1 job2 floating2">
                    <div class="job1-cont"> <span class="job-count"> 1 </span> <a href="" data-toggle="modal" data-target="#myModal2">PHP DEVELOPER</a> </div>
                    <div class="job1-outter"> <img src="/themes/st_theme/images/flame.png" alt="PHP DEVELOPER"></div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 job1 job3 floating">
                    <div class="job1-cont"> <span class="job-count"> 1 </span> <a href="" data-toggle="modal" data-target="#myModal3"> HR GENERALIST </a> </div>
                    <div class="job1-outter"> <img src="/themes/st_theme/images/flame.png" alt="HR GENERALIST"></div>
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
                <h4 class="modal-title" id="myModalLabel"> UI/UX DESIGNERS</h4>
            </div>
            <div class="modal-body">
                <h3> We are on the lookout for…. </h3>
                <p> <strong> Whom: </strong> UI/UX Designers </p>
                <p><strong> Must Have:</strong> 2-5 years experience </p>
                <p> <strong>Must Know:</strong> Photoshop, Coreldraw, Illustrator </p>
                <p> <strong>Must Be:</strong> Extremely creative in designing. Should be up-to-date with the latest designing trends. Open to adapting to new designing tools and requirements.</p>
                <h3> Apply Now </h3>
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
                    <?= $form->field($model, 'hidden1')->hiddenInput(['value' => 'UI/UX Designer'])->label(false); ?>
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
                <h4 class="modal-title" id="myModalLabel"> PHP DEVELOPER</h4>
            </div>
            <div class="modal-body">
                <h3> We are on the lookout for…. </h3>
                <p> <strong> Whom: </strong> PHP DEVELOPERS</p>
                <p><strong> Must Have:</strong> 3-5 years experience </p>
                <p> <strong>Must Know:</strong>PHP Frameworks like Laravel, YII2, Angular JS and associated technologies</p>
                <p> <strong>Must Be:</strong> Proficient in highest coding standards, Code optimization & logical thinking. Should quick adapt to newer technologies.</p>
                <h3> Apply Now </h3>
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
                    <?= $form->field($model, 'hidden1')->hiddenInput(['value' => 'PHP Developer'])->label(false); ?>
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
</div>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"> HR GENERALIST</h4>
            </div>
            <div class="modal-body">
                <h3> We are on the lookout for…. </h3>
                <p> <strong> Whom: </strong> HR Generalist </p>
                <p><strong> Must Have:</strong> 1-3 years experience </p>
                <p> <strong>Must Know:</strong>People and employee handling techniques. Excellent oral and written communication</p>
                <p> <strong>Must Be:</strong> Proficient in employee payroll management, client co-ordination, project management and  people handling.</p>
                <h3> Apply Now </h3>
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
                    <?= $form->field($model, 'hidden1')->hiddenInput(['value' => 'HR Generalist'])->label(false); ?>
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