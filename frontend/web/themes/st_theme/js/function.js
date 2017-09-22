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


$(document).ready(function () {
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
});


$(document).ready(function () {
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
});


$(document).ready(function () {
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
