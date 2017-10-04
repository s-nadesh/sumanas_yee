<?php

use yii\bootstrap\ActiveForm;

//$this->title = 'Contact-Sumanas';
?>
<div class="inner-page-heading ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h1>Stay Connected</h1>
                <span>Get in touch with us to experience pure 'awesomesness'!</span> </div>
        </div>
    </div>
</div>
<div class=" ui-ux-cont">
    <div class="container-fluid">
        <div class="contact-us1">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h2> Say Hi ! </h2>
                <span> We would love to hear from you!</span> <br/>
                <img src="/themes/st_theme/images/contactus-line.jpg" alt=""></div>

            <div class="col-xs-12 col-sm-5 col-md-6 col-lg-6 contact-left"> <img src="/themes/st_theme/images/contactus.png"  alt="Contact Sumanas"></div>

            <div class="col-xs-12 col-sm-7 col-md-6 col-lg-6 contact-right">
                <?php
                $form = ActiveForm::begin(['id' => 'contact_form', 'enableAjaxValidation' => false, 'enableClientValidation' => false,
                            'options' => [
                                'name' => 'myform',
                                'autocomplete' => 'off',
//                                    'validationUrl' => Url::toRoute('contact-us/create')
                            ],
                ]);
                ?>
                <div class="row">
                    <div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <?= $form->field($model, 'name')->textInput(['placeholder' => 'Name', 'class' => 'form-control'])->label(false) ?>
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <?= $form->field($model, 'email')->textInput(['placeholder' => 'Email', 'class' => 'form-control'])->label(false) ?>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <?= $form->field($model, 'phone')->textInput(['placeholder' => 'Phone', 'class' => 'form-control'])->label(false) ?>
                    </div>
                    <div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <?= $form->field($model, 'subject')->textInput(['placeholder' => 'Subject', 'class' => 'form-control'])->label(false) ?>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <?= $form->field($model, 'message')->textarea(['placeholder' => 'Message', 'class' => 'form-control msg-filed', 'rows' => '6'])->label(false) ?>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                            <button type="submit" name="contactus" class="btn btn1">Send Message <i class="fa fa-paper-plane" aria-hidden="true"></i></button>
                        </div>
                    </div>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
        <div class="contact-us2">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h2> Get in Touch </h2>
                <img src="/themes/st_theme/images/contactus-line2.jpg" alt=""></div>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 contact-details1">
                <p> <img src="/themes/st_theme/images/contact-icon1.png"  alt="Address"></p>
                <p> <span> Address </span> </p>
                <p> No:01, Gandhiji St, Rasi Towers, <br/>
                    Near Aparna Enclave, Velmurgan Nagar, <br/>
                    Bypass Road, Madurai – 625010. <br/>
                </p>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 contact-details1">
                <p> <img src="/themes/st_theme/images/contact-icon2.png"  alt="Phone"></p>
                <p> <span> Phone </span> </p>
                <p> 0452-4210515  / 9952870443 </p>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 contact-details1">
                <p> <img src="/themes/st_theme/images/contact-icon3.png"  alt="Email"></p>
                <p> <span> Email </span> </p>
                <p><a href="mailto:info@sumanastech.com">info@sumanastech.com</a> </p>
            </div>
        </div>
        <div class="contact-us3">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h2> Get Direction </h2>
                <img src="/themes/st_theme/images/contactus-line.jpg" alt=""></div>
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15720.960999771827!2d78.0912065!3d9.913938!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbb93edd0ba416d8e!2sArk+Infotec!5e0!3m2!1sen!2sin!4v1501328720961" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</div>