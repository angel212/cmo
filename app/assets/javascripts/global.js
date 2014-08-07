$(document).ready(function (e) {
    $.datepicker.setDefaults({dateFormat: 'dd/mm/yy'});
    $('div#page-1').show();
    $('li#step-1 a').addClass('highlighted');
    $('div#page-2').hide();
    $('div#page-3').hide();
    $('div#page-4').hide();
    $('div#page-5').hide();
    $('div#page-6').hide();
    $('#page-title').text("Personal Particulars");
    $('.pagination').hide();
    $('#page-title').append($('.pagination'));
    $('#termination-date-form').hide();
    $('#end-date-label').hide();
    $('#highest-degree-obtained').hide();
    $('#aim-alumni-form').hide();
    $('#registration-submission').hide();

    $(".btn").on("click", function() {
        $("body").scrollTop(0);
    });

    $('#mailing_edit_link').click(function(e) {
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

    if ($('.dob').attr('value') === undefined) {
        $('.dob').datepicker("setDate", "01/01/1980");
    }

    $('button#submit').click(function(e) {
        if ($('.dob').val() == "") {
            e.preventDefault();
        }
    })


    $.each($('.date-pick.non-dob'), function(e) {
        var parsedDate = $.datepicker.parseDate('yy-mm-dd', $(this).attr('value'));
        $(this).datepicker("setDate", parsedDate);
    })

    $('#submit-personal-info').click(function (e) {
        e.preventDefault();
        $('#page-title').text("Professional Affiliation");
        $('div#page-1').hide();
        $('div#page-2').show();
    })

    $('#submit-education-info-back').click(function (e) {
        $('div#page-2').hide();
        $('#page-title').text("Personal Particulars");
        $('div#page-1').show();
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
        $('div#page-1').show();
        e.preventDefault();
    })

    $('.education-btn').click(function (e) {
    $('div#page-1').hide();
    $('div#page-3').hide();
    $('div#page-4').hide();
    $('div#page-2').show();
    e.preventDefault();
})

    $('.workexperience-btn').click(function (e) {
        $('div#page-1').hide();
        $('div#page-2').hide();
        $('div#page-4').hide();
        $('div#page-3').show();
        e.preventDefault();
    })

    $('.profile-btn').click(function (e) {
        $('div#page-1').hide();
        $('div#page-3').hide();
        $('div#page-2').hide();
        $('div#page-4').show();
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
    targetElement.click(function() {
        $(this).siblings().removeClass("changeColor");
        $(this).addClass("changeColor");
    });
});
