<?php

namespace frontend\models;

use Yii;
use yii\base\Model;

/**
 * ContactForm is the model behind the contact form.
 */
class CareersForm extends Model {

    public $name;
    public $email;
    public $phone;
    public $source_to_find;
    public $cover_letter;
    public $file;
    public $hidden1;

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            // name, email, subject and body are required
                [['name', 'email', 'phone', 'source_to_find', 'cover_letter', 'hidden1', 'file'], 'required'],
            // email has to be a valid email address
            ['email', 'email'],
                // verifyCode needs to be entered correctly
//            ['verifyCode', 'captcha'],
        ];
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
        $message .= "<strong>Position For Applied: </strong>" . $this->hidden1 . "<br><br>";
        $message .= "<strong>Message: </strong> " . $this->cover_letter . "<br><br>";
        return Yii::$app->mailer->compose()
                        ->setTo($email)
                        ->setReplyTo([$this->email => $this->name])
                        ->setFrom([$this->email => $this->name])
                        ->setSubject('Careers Form')
                        ->attach(Yii::getAlias('@frontend') . '/web/uploads/' . $this->file)
                        ->setHtmlBody($message)
                        ->send();
    }

}
