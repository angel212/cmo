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
    $('#registration-submission').hide();

    $("#pop-btn").on("click", function() {
        $("#pop").toggle();
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
        $('div#page-7').hide();
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
    $('#personal-update').click(function (e) {
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
            document.getElementById("lang" + e.target.id).remove()
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
            document.getElementById("function" + e.target.id).remove()
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
            document.getElementById("industry" + e.target.id).remove()
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
            document.getElementById("geographic" + e.target.id).remove()
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
            document.getElementById("pre_industry" + e.target.id).remove()
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
            document.getElementById("pre_criteria" + e.target.id).remove()
            document.getElementById("pre_criteria_disp" + e.target.id).remove();
            // $( "span" ).remove( "lang" + e.target.id);
            $.ajax('/api/preference_criteria/delete/' + e.target.id);
        } else {
            return false;
        }
        e.preventDefault();
    })

//
});
