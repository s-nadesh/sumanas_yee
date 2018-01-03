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
        $("#" + formID).formValidation('resetForm', true);
        FormValidation.AddOn.reCaptcha2.reset('captchaContainer');
        FormValidation.AddOn.reCaptcha2.reset('captchaContainer1');
        FormValidation.AddOn.reCaptcha2.reset('captchaContainer2');
        FormValidation.AddOn.reCaptcha2.reset('captchaContainer3');
    }

    function formButtonStatus(status) {
        if (status == 'progress') {
            $(".formProgress").removeClass("hide");
            $(".formComplete").addClass("hide");
        }
        if (status == 'complete') {
            $(".formProgress").addClass("hide");
            $(".formComplete").removeClass("hide");
        }
    }

    function formSuccess() {
        $(".msgSuccess").removeClass("hide");
        setTimeout(function () {
            $('.msgSuccess').addClass('hide');
        }, 7000);
    }

    function formError() {
        $(".msgError").removeClass("hide");
        setTimeout(function () {
            $('.msgError').addClass('hide');
        }, 7000);
    }

    $('#contact_form').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        addOns: {
            reCaptcha2: {
                element: 'captchaContainer',
                theme: 'light',
                siteKey: '6LfBBz8UAAAAAJrVDRQflJn2SXH71C5ceOmEKS4B',
                message: ' '
            }
        },
        fields: {
            'ContactForm[name]': {
                validators: {
                    notEmpty: {
                        message: ' '
                    },
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
                    integer: {
                        message: ' '
                    }
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
    }).on('success.form.fv', function (e) {
        // Prevent form submission
        e.preventDefault();
        // Get the form instance
        var $form = $(e.target);
        // Get the formValidation instance
        var fv = $form.data('formValidation');
        // Use Ajax to submit form data
        submitForm("contact_form", "contact-sumanas");
    });

    $('#quote_form').formValidation({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        icon: {
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
                    integer: {
                        message: ' '
                    }
                }
            },
        }
    }).on('success.form.fv', function (e) {
        // Prevent form submission
        e.preventDefault();
        // Get the form instance
        var $form = $(e.target);
        // Get the formValidation instance
        var fv = $form.data('formValidation');
        // Use Ajax to submit form data
        submitForm("quote_form", "index");
    });


    $('#career_form1').formValidation({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        addOns: {
            reCaptcha2: {
                element: 'captchaContainer1',
                theme: 'light',
                siteKey: '6LfBBz8UAAAAAJrVDRQflJn2SXH71C5ceOmEKS4B',
                message: ' '
            }
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
                    integer: {
                        message: ' '
                    }
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
//            'CareersForm[file]': {
//                validators: {
//                    notEmpty: {
//                        message: ' '
//                    },
//                }
//            },
        }
    }).on('success.form.fv', function (e) {
        // Prevent form submission
        e.preventDefault();
        // Get the form instance
        var $form = $(e.target);
        // Get the formValidation instance
        var fv = $form.data('formValidation');
        // Use Ajax to submit form data
        submitForm("career_form1", "careers");
    });


    $('#career_form2').formValidation({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        addOns: {
            reCaptcha2: {
                element: 'captchaContainer2',
                theme: 'light',
                siteKey: '6LfBBz8UAAAAAJrVDRQflJn2SXH71C5ceOmEKS4B',
                message: ' '
            }
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
                    integer: {
                        message: ' '
                    }
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
//            'CareersForm[file]': {
//                validators: {
//                    notEmpty: {
//                        message: ' '
//                    }
//                }
//            },
        }
    }).on('success.form.fv', function (e) {
        // Prevent form submission
        e.preventDefault();
        // Get the form instance
        var $form = $(e.target);
        // Get the formValidation instance
        var fv = $form.data('formValidation');
        // Use Ajax to submit form data
        submitForm("career_form2", "careers");
    });

    $('#career_form3').formValidation({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        addOns: {
            reCaptcha2: {
                element: 'captchaContainer3',
                theme: 'light',
                siteKey: '6LfBBz8UAAAAAJrVDRQflJn2SXH71C5ceOmEKS4B',
                message: ' '
            }
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
                    integer: {
                        message: ' '
                    }
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
//            'CareersForm[file]': {
//                validators: {
//                    notEmpty: {
//                        message: ' '
//                    }
//                }
//            },
        }
    }).on('success.form.fv', function (e) {
        // Prevent form submission
        e.preventDefault();
        // Get the form instance
        var $form = $(e.target);
        // Get the formValidation instance
        var fv = $form.data('formValidation');
        // Use Ajax to submit form data
        submitForm("career_form3", "careers");
    });
});






