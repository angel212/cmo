$(document).ready(function (e) {
    $.datepicker.setDefaults({dateFormat: 'dd/mm/yy'});
    $('div#page-1').show();
    $('li#step-1 a').addClass('highlighted');
    $('div#page-2').hide();
    $('div#page-3').hide();
    $('div#page-4').hide();
    $('div#page-5').hide();
    $('div#page-6').hide();
    $('div#page-7').hide();
    $('div#page-8').hide();
    $('div#page-9').hide();
    $('div#job-status-page').hide();
    $('div#address-page').hide();
    $('#pop').hide();
    //$('.jBox-container').hide();
    $('#page-title').text("Personal Particulars");
    $('.pagination').hide();
    $('#page-title').append($('.pagination'));
    $('#termination-date-form').hide();
    $('#end-date-label').hide();
    $('#highest-degree-obtained').hide();
    $('#aim-alumni-form').hide();
    $('#registration-submission').hide()


    $("#pop-btn").on("click", function() {
        $("#pop").toggle();
    });

    $('#dropdownMenu3').on("click", function() {
       $(".dropdown-menu").toggle();
    });

    $(".patrick-btn").on("click", function() {
        $("body").scrollTop(0);
    });

//    $( "#myForm" ).submit(function( e ) {
//        // prevent form from sending like normal
//        e.preventDefault();
//        // Send post with ajax, with the postdata of the html form, whatever your page returns you can catch with .done(function(data));
//        $.post( "", $( "#myForm" ).serialize() ).done(function( data ) {
//            console.log( "return data: " + data );
//        });
//    });

    $('.date-picker2').datepicker( {
        changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
        dateFormat: 'MM yy',
        onClose: function(dateText, inst) {
            var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
            $(this).datepicker('setDate', new Date(year, month, 1));
        }
    });

    $('#mailing_edit_link').click(function(e) {
        return false;
        e.preventDefault();
    });

    $('#personal_edit_link').click(function(e) {
        return false;
        e.preventDefault();
    });

    $('#education_edit_link').click(function(e) {
        return false;
        e.preventDefault();
    });

    $('#professional_edit_link').click(function(e) {
        return false;
        e.preventDefault();
    });

    $('#preference_edit_link').click(function(e) {
        return false;
        e.preventDefault();
    });

    $('#change_email_link').click(function(e) {
        return false;
        e.preventDefault();
    });

    $('#change_pass_link').click(function(e) {
        return false;
        e.preventDefault();
    });

    $('#alumni-no').click(function(e) {
        e.preventDefault();
        $('#alumni-question').hide();
        $('#registration-submission').show();
        $('#last-school-name').val("");
    })

    $('#begin-app-submit').click(function(e){
       if ($('#email').val().search('test') != -1) {
           e.preventDefault();
           alert('Kindly contact ICT\'s Quality Assurance department to request for assistance during testing');
       }
    })


    $('.date-pick').datepicker();

//    if ($('.dob').attr('value') === undefined) {
//        $('.dob').datepicker("setDate", "01/01/1980");
//    }

    $('button#submit').click(function(e) {
        if ($('.dob').val() == "") {
            e.preventDefault();
        }
    })


//    $.each($('.date-pick.non-dob'), function(e) {
//        var parsedDate = $.datepicker.parseDate('yy-mm-dd', $(this).attr('value'));
//        $(this).datepicker("setDate", parsedDate);
//    })

    $('#submit-personal-info').click(function (e) {
        e.preventDefault();
        $('#page-title').text("Professional Affiliation");
        $('div#page-1').hide();
        $('div#address-page').show();
    })

    $('#submit-personal-details-back').click(function (e) {
        $('div#address-page').hide();
        $('#page-title').text("Personal Particulars");
        $('div#page-1').show();
        e.preventDefault();
    })

    $('#submit-address-info').click(function (e) {
        $('div#address-page').hide();
        $('#page-title').text("Personal Particulars");
        $('div#page-2').show();
        e.preventDefault();
    })

    $('#submit-education-info-back').click(function (e) {
        $('div#page-2').hide();
        $('#page-title').text("Personal Particulars");
        $('div#address-page').show();
        e.preventDefault();
    })
    $('#submit-education-info-next').click(function (e) {
        $('div#page-2').hide();
        $('#page-title').text("Educational Background");
        $('div#page-3').show();
        e.preventDefault();
    })
    $('#submit-employment-info-back').click(function (e) {
        $('div#page-3').hide();
        $('#page-title').text("Personal Particulars");
        $('div#page-2').show();
        e.preventDefault();
    })


    $('#submit-employment-info-next').click(function (e) {
        $('div#page-3').hide();
        $('#page-title').text("Educational Background");
        $('div#page-4').show();
        e.preventDefault();
    })

    $('#submit-preferences-info-back').click(function (e) {
        $('div#page-4').hide();
        $('#page-title').text("Personal Particulars");
        $('div#page-3').show();
        e.preventDefault();
    })

    $('.about-me-btn').click(function (e) {
        $('div#page-2').hide();
        $('div#page-3').hide();
        $('div#page-4').hide();
        $('div#page-5').hide();
        $('div#page-8').hide();
        $('div#page-1').show()
        $('div#page-9').hide();
        $('div#resume').hide();
        $('div#page-6').hide();
        $('div#page-7').hide();
        $('div#address-page').hide();
        $('div#job-status-page').hide();
        e.preventDefault();
    })

    $('.education-btn').click(function (e) {
    $('div#page-1').hide();
    $('div#page-3').hide();
    $('div#page-4').hide();
    $('div#page-5').hide()
    $('div#page-8').hide();
    $('div#address-page').hide();
    $('div#page-2').show();
    $('div#page-9').hide();
    $('div#resume').hide();
    $('div#page-6').hide();
    $('div#page-7').hide();
    $('div#job-status-page').hide();
    e.preventDefault();
})

    $('.workexperience-btn').click(function (e) {
        $('div#page-1').hide();
        $('div#page-2').hide();
        $('div#page-4').hide();
        $('div#page-5').hide();
        $('div#address-page').hide();
        $('div#page-3').show();
        $('div#page-8').hide();
        $('div#resume').hide();
        $('div#page-9').hide();
        $('div#page-6').hide();
        $('div#page-7').hide();
        $('div#job-status-page').hide();
        e.preventDefault();
    })

    $('.profile-btn').click(function (e) {
        $('div#page-1').hide();
        $('div#page-3').hide()
        $('div#page-8').hide();
        $('div#address-page').hide();
        $('div#page-2').hide();
        $('div#page-5').hide();
        $('div#page-9').hide();
        $('div#page-4').show();
        $('div#resume').hide();
        $('div#page-6').hide();
        $('div#page-7').hide();
        $('div#job-status-page').hide();
        e.preventDefault();
    })

    $('.settings-btn').click(function (e) {
        $('div#page-1').hide();
        $('div#page-3').hide();
        $('div#address-page').hide();
        $('div#page-2').hide();
        $('div#page-4').hide();
        $('div#page-8').hide();
        $('div#page-5').show();
        $('div#resume').hide()
        $('div#page-9').hide();
        $('div#page-6').hide();
        $('div#page-7').hide()
        $('div#job-status-page').hide();
        e.preventDefault();
    })

    $('.myuploads-btn').click(function (e) {
        $('div#page-2').hide();
        $('div#page-3').hide();
        $('div#page-4').hide();
        $('div#page-5').hide();
        $('div#address-page').hide();
        $('div#page-1').hide();
        $('div#resume').hide();
        $('div#page-9').hide();
        $('div#page-6').hide();
        $('div#page-7').show();
        $('div#job-status-page').hide();
        e.preventDefault();
    })

//    function preventDefault(e) {
//        e = e || window.event;
//        if (e.preventDefault)
//            e.preventDefault();
//        e.returnValue = false;
//    }
//
//    function keydown(e) {
//        for (var i = keys.length; i--;) {
//            if (e.keyCode === keys[i]) {
//                preventDefault(e);
//                return;
//            }
//        }
//    }
//
//    function wheel(e) {
//        preventDefault(e);
//    }
//
//    function disable_scroll() {
//        if (window.addEventListener) {
//            window.addEventListener('DOMMouseScroll', wheel, false);
//        }
//        window.onmousewheel = document.onmousewheel = wheel;
//        document.onkeydown = keydown;
//    }
//
//    function enable_scroll() {
//        if (window.removeEventListener) {
//            window.removeEventListener('DOMMouseScroll', wheel, false);
//        }
//        window.onmousewheel = document.onmousewheel = document.onkeydown = null;
//    }

    $('.myresume-btn').click(function (e) {
        $('div#page-2').hide();
        $('div#page-3').hide();
        $('div#page-4').hide();
        $('div#page-5').hide();
        $('div#page-1').hide();
        $('div#address-page').hide();
        $('div#resume').hide();
        $('div#page-6').hide();
        $('div#page-7').hide();
        $('div#page-9').show();
        $('div#page-8').hide();
        $('div#job-status-page').hide();
//        disable_scroll();
        e.preventDefault();
    })

    $('.job-status-btn').click(function (e) {
        $('div#page-2').hide();
        $('div#page-3').hide();
        $('div#page-4').hide();
        $('div#page-5').hide();
        $('div#page-1').hide();
        $('div#address-page').hide();
        $('div#resume').hide();
        $('div#page-6').hide();
        $('div#page-7').hide();
        $('div#page-9').hide();
        $('div#page-8').hide();
        $('div#job-status-page').show();
//        disable_scroll();
        e.preventDefault();
    })

    $('.back-print-btn').click(function (e) {
        $('div#page-2').hide();
        $('div#page-3').hide();
        $('div#page-4').hide();
        $('div#page-5').hide();
        $('div#page-1').show();
        $('div#resume').hide();
        $('div#page-6').hide();
        $('div#address-page').hide();
        $('div#page-7').hide();
        $('div#page-9').hide();
        $('div#page-8').hide();
//        enable_scroll();
        e.preventDefault();
    })

    $('.address-btn').click(function (e) {
        $('div#page-2').hide();
        $('div#page-3').hide();
        $('div#page-4').hide();
        $('div#page-5').hide();
        $('div#page-1').hide();
        $('div#resume').hide();
        $('div#page-6').hide();
        $('div#address-page').show();
        $('div#page-7').hide();
        $('div#page-9').hide();
        $('div#page-8').hide();
//        enable_scroll();
        e.preventDefault();
    })



    $('#education-submit').click(function (e) {
        e.preventDefault();
        $('#application-form').submit();
    })
//    submit button for the dialog boxes
    $('#personal-update2').click(function (e) {
       e.preventDefault();
        $('#personal_details-form').submit();
    })
    $('#mailing-update').click(function (e) {
        e.preventDefault();
        $('#mailing-details-form').submit();
    })
    $('#education-details-submit').click(function (e) {
        e.preventDefault();
        $('#education-details-form').submit();
    })
    $('#professional-submit').click(function (e) {
        e.preventDefault();
        $('#professional-details-form').submit();
    })

    $('#preferences-submit').click(function (e) {
        e.preventDefault();
        $('#preference-details-form').submit();
    })
    $('#changepass-submit').click(function (e) {
        e.preventDefault();
        $('#change-pass-form').submit();
    })
    $('#changeemail-submit').click(function (e) {
        e.preventDefault();
        $('#changeEmailForm').submit();
    })
    $('#add-school-submit').click(function (e) {
        e.preventDefault();
        $('#school-multiple-form').submit();
    })

    $('#add-work-submit').click(function (e) {
        e.preventDefault();
        $('#work-multiple-form').submit();
    })
})

function showTerminationDate() {
    $('#termination-date-form').show();
    $('#termination-date').hide();
    $('#end-date-label').show();
}

function showCompletionDate() {
    $('#graduation-date-field-alternate').hide();
    $('#highest-degree-obtained').show();
}

//

$(document).ready(function(){

    var targetElement = $("#leftcolumn li");
    $("#leftcolumn li:first-child").addClass("changeColor");
    targetElement.click(function() {
        $(this).siblings().removeClass("changeColor");
        $(this).addClass("changeColor");
    });

    $('#submit-personal-info').click(function(e) {
        $("#leftcolumn li:nth-child(2)").addClass("changeColor");
        $("#leftcolumn li:nth-child(1)").removeClass("changeColor");
        $("#leftcolumn li:nth-child(6)").removeClass("changeColor");
    });

    $('#submit-personal-details-back').click(function(e) {
        $("#leftcolumn li:nth-child(1)").addClass("changeColor");
        $("#leftcolumn li:nth-child(2)").removeClass("changeColor");
        $("#leftcolumn li:nth-child(6)").removeClass("changeColor");
    });

    $('#submit-address-info').click(function(e) {
        $("#leftcolumn li:nth-child(3)").addClass("changeColor");
        $("#leftcolumn li:nth-child(2)").removeClass("changeColor");
        $("#leftcolumn li:nth-child(6)").removeClass("changeColor");
    });

    $('#submit-education-info-next').click(function(e) {
        $("#leftcolumn li:nth-child(4)").addClass("changeColor");
        $("#leftcolumn li:nth-child(3)").removeClass("changeColor");
    });

    $('#submit-employment-info-next').click(function(e) {
        $("#leftcolumn li:nth-child(5)").addClass("changeColor");
        $("#leftcolumn li:nth-child(4)").removeClass("changeColor");
    });

    $('#submit-education-info-back').click(function(e) {
        $("#leftcolumn li:nth-child(2)").addClass("changeColor");
        $("#leftcolumn li:nth-child(3)").removeClass("changeColor");
    });

    $('#submit-employment-info-back').click(function(e) {
        $("#leftcolumn li:nth-child(3)").addClass("changeColor");
        $("#leftcolumn li:nth-child(4)").removeClass("changeColor");
    });

    $('#submit-preferences-info-back').click(function(e) {
        $("#leftcolumn li:nth-child(4)").addClass("changeColor");
        $("#leftcolumn li:nth-child(5)").removeClass("changeColor");
    });

    $('#back-print-btn').click(function(e) {
        $("#leftcolumn li:nth-child(1)").addClass("changeColor");
        $("#leftcolumn li:nth-child(7)").removeClass("changeColor");
    });

    $('.language-ability-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("lang" + e.target.id).remove();
            document.getElementById("lang_disp" + e.target.id).remove();
           // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/language_ability/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    $('.function-experience-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("function" + e.target.id).remove();
            document.getElementById("function_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/function_experience/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    $('.industry-experience-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("industry" + e.target.id).remove();
            document.getElementById("industry_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/industry_experience/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    $('.geographic-experience-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("geographic" + e.target.id).remove();
            document.getElementById("geographic_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/geographic_experience/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    $('.preference-industry-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("pre_industry" + e.target.id).remove();
            document.getElementById("pre_industry_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/preference_industry/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    $('.preference-criteria-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("pre_criteria" + e.target.id).remove();
            document.getElementById("pre_criteria_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/preference_criteria/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })

    $('.club-affiliation-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("club_affi" + e.target.id).remove();
            document.getElementById("affl_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/club_affiliation/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    $('.other-degree-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("other_grad" + e.target.id).remove();
            document.getElementById("other_grad_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/other_grad/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })

    $('.certification-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("certification" + e.target.id).remove();
            document.getElementById("certification_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/certification/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    $('.undergraduate-major-delete').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("undergrad" + e.target.id).remove();
            document.getElementById("undergrad_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/undergrad/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    $('.work-experience-multi').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("table-work-" + e.target.id).remove();
//            $('#work_exp-' + e.target.id).modal('hide');
            $.ajax('/api/work/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    $('.school-educ-multi').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("table-school-" + e.target.id).remove();
//            $('#work_exp-' + e.target.id).modal('hide');
            $.ajax('/api/school_educ/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();school-educ-multi
    })

    $('.delete_job_desc').click(function(e) {

        var r = confirm("Do you really want to Delete?");
        if (r == true) {
            document.getElementById("job_desc-disp1-" + e.target.id).remove();
            document.getElementById("job_desc-disp2-" + e.target.id).remove();
           $.ajax('/api/job_desc/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })
    //    $('#submit-club-affil').click(function() {
//
//
//        $("#cl_affiliation :selected").text();
//        var x = $("#club_affi-id").val();
//
//        // $( "span" ).remove( "lang" + e.target.id);
//
//        $.ajax('/api/preference_criteria/delete/' + x);
//
//
//    })

//
});
