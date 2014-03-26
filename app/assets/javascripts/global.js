$(document).ready(function (e) {
    $.datepicker.setDefaults({dateFormat: 'dd/mm/yy'});
    $('div#page-1').show();
    $('li#step-1 a').addClass('highlighted');
    $('div#page-2').hide();
    $('div#page-3').hide();
    $('#page-title').text("Personal Particulars");
    $('.pagination').hide();
    $('#page-title').append($('.pagination'));
    $('#termination-date-form').hide();
    $('#end-date-label').hide();
    $('#highest-degree-obtained').hide();
    $('#aim-alumni-form').hide();
    $('#registration-submission').hide();

    $('#alumni-yes').click(function(e) {
        e.preventDefault();
        $('#alumni-question').hide();
        $('#aim-alumni-form').show();
        $('#registration-submission').show();
        $('#last-school-name').val("Asian Institute of Management");
    })
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

    $('#submit-employment-info-back').click(function (e) {
        $('div#page-2').hide();
        $('#page-title').text("Personal Particulars");
        $('div#page-1').show();
        e.preventDefault();
    })

    $('#submit-employment-info-next').click(function (e) {
        $('div#page-2').hide();
        $('#page-title').text("Educational Background");
        $('div#page-3').show();
        e.preventDefault();
    })

    $('#education-back').click(function (e) {
        $('div#page-3').hide();
        $('#page-title').text("Professional Affiliation");
        $('div#page-2').show();
        e.preventDefault();

    })

    $('#education-submit').click(function (e) {
        e.preventDefault();
        $('#application-form').submit();
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

// Settings
var speed = .1 * 1000; // how long each transition is, milliseconds

$(document).ready(
    function()
    {
        // initialize
        var distance = $(".rankElement").css("height");
        distance = parseFloat(distance.substr(0,(distance.length - 2))) + 29; // distance to move when changing rank
        var ranksIds = new Array();
        var idsRanks = new Array();
        var idsPoss = new Array();
        for (var i = 0; i < $(".rankElement").length; i++)
        {	ranksIds[i] = i;
            idsRanks[i] = i;
            idsPoss[i] = 0;

            // initialize the form input values in case the browser cached them
            $("input[name='personal_detail[track"+i+"]']").attr("value",idsRanks[i]);
            $("font.rankDisp#el"+i).html(i+1);
            $("#track"+i).val(idsRanks[i]);

        }

        // Connect the up/down buttons to their functions
        $(".up").on("click",function(){rankChange(1, $(this).parent(), distance, ranksIds, idsRanks, idsPoss)});
        $(".down").on("click",function(){rankChange(-1, $(this).parent(), distance, ranksIds, idsRanks, idsPoss)});
    }
);

function rankChange(dir, element, distance, ranksIds, idsRanks, idsPoss)
{
    var id = $(element).attr("id");
    id = parseFloat(id.substring(2,id.length));	// remove the "el"
    var idDisp = parseFloat(ranksIds[idsRanks[id] - dir]);
    distance = distance * dir;

    // if we're not trying to move it too high/low
    if (((idsRanks[id] < (ranksIds.length - 1)) && (dir == -1)) || ((idsRanks[id] > 0) && (dir == 1)))
    {	// move the clicked one down in the variables
        idsRanks[id] = idsRanks[id] - dir;
        ranksIds[idsRanks[id]] = id;
        idsPoss[id] = idsPoss[id] - distance;

        // move the displaced one up in the variables
        idsRanks[idDisp] = idsRanks[id] + dir;
        ranksIds[idsRanks[id] + dir] = idDisp;
        idsPoss[idDisp] = idsPoss[idDisp] + distance;

        // change the form input values
        $("input[name='personal_detail[track"+id+"]']").attr("value",idsRanks[id]);
        $("input[name='personal_detail[track"+idDisp+"]']").attr("value",idsRanks[idDisp]);

        // change the rank display number
        $("font.rankDisp#el"+id).html(idsRanks[id]+1);
        $("font.rankDisp#el"+idDisp).html(idsRanks[idDisp]+1);

        // move them physically
        $(".rankElement#el"+id).animate({top:idsPoss[id]+"px"},speed);
        $(".rankElement#el"+idDisp).animate({top:idsPoss[idDisp]+"px"},speed);
    }
}
