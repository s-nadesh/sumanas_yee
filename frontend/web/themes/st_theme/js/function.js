$(document).ready(function () {
    function submitForm(formID, url) {
        // Initiate Variables With Form Content
//        var datastring = $("#"+formID).serialize(); //FILE Not Working.
        var datastring = new FormData($("#" + formID)[0]);
        formButtonStatus('progress');
        $.ajax({
            type: "POST",
            url: url,
            data: datastring,
            dataType: "json",
            processData: false,
            contentType: false,
            success: function (text) {
                if (text) {
                    formSuccess();
                    formClear(formID);
                } else {
                    formError();
                    formClear(formID);
                }
                formButtonStatus('complete');
            },
            error: function () {
                formError();
                formClear(formID);
                formButtonStatus('complete');
            }
        });
    }

    function formClear(formID) {
        $('#' + formID)[0].reset();
        $("#" + formID).data('bootstrapValidator').resetForm();
    }

    function formButtonStatus(status) {
        if (status == 'progress') {
            $("#formProgress").removeClass("hide");
            $("#formComplete").addClass("hide");
        }
        if (status == 'complete') {
            $("#formProgress").addClass("hide");
            $("#formComplete").removeClass("hide");
        }
    }

    function formSuccess() {
        $("#msgSuccess").removeClass("hide");
        setTimeout(function () {
            $('#msgSuccess').addClass('hide');
        }, 5000);
    }

    function formError() {
        $("#msgError").removeClass("hide");
        setTimeout(function () {
            $('#msgError').addClass('hide');
        }, 5000);
    }

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
    }).on('success.form.bv', function (e) {
        // Prevent form submission
        e.preventDefault();
        // Get the form instance
        var $form = $(e.target);
        // Get the BootstrapValidator instance
        var bv = $form.data('bootstrapValidator');
        // Use Ajax to submit form data
        submitForm("contact_form", "contact-sumanas");
    });

    $('#contact_form1').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            'CareersForm[name]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'CareersForm[email]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    },
                    emailAddress: {
                        message: ' '
                    }
                }
            },
            'CareersForm[phone]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    },
                }
            },
            'CareersForm[source_to_find]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'CareersForm[cover_letter]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'CareersForm[file]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
        }
    }).on('submit1', function (e) {
        if (e.isDefaultPrevented()) {
            console.log('error');
        } else {
            e.preventDefault();
//            submitForm();
        }
    });


    $('#contact_form2').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            'CareersForm[name]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'CareersForm[email]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    },
                    emailAddress: {
                        message: ' '
                    }
                }
            },
            'CareersForm[phone]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    },
                }
            },
            'CareersForm[source_to_find]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'CareersForm[cover_letter]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'CareersForm[file]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
        }
    }).on('submit2', function (e) {
        if (e.isDefaultPrevented()) {
            console.log('error');
        } else {
            e.preventDefault();
//            submitForm();
        }
    });

    $('#contact_form3').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            'CareersForm[name]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'CareersForm[email]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    },
                    emailAddress: {
                        message: ' '
                    }
                }
            },
            'CareersForm[phone]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    },
                }
            },
            'CareersForm[source_to_find]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'CareersForm[cover_letter]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
            'CareersForm[file]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    }
                }
            },
        }
    }).on('submit3', function (e) {
        if (e.isDefaultPrevented()) {
            console.log('error');
        } else {
            e.preventDefault();
//            submitForm();
        }
    });
});






