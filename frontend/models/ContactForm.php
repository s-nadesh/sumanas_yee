<?php

namespace frontend\models;

use Yii;
use yii\base\Model;

/**
 * ContactForm is the model behind the contact form.
 */
class ContactForm extends Model {

    public $name;
    public $email;
    public $phone;
    public $subject;
    public $message;

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            // name, email, subject and body are required
                [['name', 'email', 'phone', 'subject', 'message'], 'required'],
                [['name', 'email', 'phone'], 'required', 'on' => 'quote'],
            ['phone','number'],
            // email has to be a valid email address
            ['email', 'email'],
                // verifyCode needs to be entered correctly
//            ['verifyCode', 'captcha'],
        ];
    }

    public function scenarios() {
        $scenarios = parent::scenarios();
        $scenarios['quote'] = ['name', 'email', 'phone']; //Scenario Values Only Accepted
        return $scenarios;
    }

    /**
     * @inheritdoc
     */
//    public function attributeLabels()
//    {
//        return [
//            'verifyCode' => 'Verification Code',
//        ];
//    }

    /**
     * Sends an email to the specified email address using the information collected by this model.
     *
     * @param  string $email the target email address
     * @return boolean whether the email was sent
     */
    public function sendEmail($email) {
        $message = '<p>Hi Admin,</p>';
        $message .= "<strong>You have got a new mail from </strong> " . $this->name . "<br><br>";
        $message .= "<strong>Email: </strong>" . $this->email . "<br><br>";
        $message .= "<strong>Phone: </strong>" . $this->phone . "<br><br>";
        $message .= "<strong>Subject: </strong>" . $this->subject . "<br><br>";
        $message .= "<strong>Message: </strong> " . $this->message . "<br><br>";
        return Yii::$app->mailer->compose()
                        ->setTo($email)
                        ->setReplyTo([$this->email => $this->name])
                        ->setFrom([$this->email => $this->name])
                        ->setSubject('Contact Form')
                        ->setHtmlBody($message)
                        ->send();
    }

    public function sendmail($email) {
        $message = '<p>Hi Admin,</p>';
        $message .= "<strong>You have got a new mail from </strong> " . $this->name . "<br><br>";
        $message .= "<strong>Email: </strong>" . $this->email . "<br><br>";
        $message .= "<strong>Phone: </strong>" . $this->phone . "<br><br>";
        return Yii::$app->mailer->compose()
                        ->setTo($email)
                        ->setReplyTo([$this->email => $this->name])
                        ->setFrom([$this->email => $this->name])
                        ->setSubject('Contact Form')
                        ->setHtmlBody($message)
                        ->send();
    }

}
