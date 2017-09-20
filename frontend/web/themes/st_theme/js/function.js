$(document).ready(function () {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            'ContactForm[name]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'ContactForm[email]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    },
                    emailAddress: {
                        message: ' '
                    }
                }
            },
            'ContactForm[phone]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    },
                }
            },
            'ContactForm[subject]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'ContactForm[message]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
        }
    }).on('contactus', function (e) {
        if (e.isDefaultPrevented()) {
            console.log('error');
        } else {
            e.preventDefault();
//            submitForm();
        }
    });
});

//function submitForm() {
//    // Initiate Variables With Form Content
//    var datastring = $("#contact_form").serialize();
//
//    $.ajax({
//        type: "POST",
////        url: "submit-form.php",
//        data: datastring,
////                dataType: "json",
//        success: function (text) {
//            if (text == "success") {
//                formSuccess();
//            }
//        }
//    });
//}

//function formSuccess() {
//    $("#msgSubmit").removeClass("hide");
//    setTimeout(function () {
//        $('#msgSubmit').addClass('hide');
//    }, 2000);
//}
