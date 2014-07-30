$(document).ready(function (e) {
    $('#page-title').text("2ND ASIAN BUSINESS CONFERENCE REGISTRATION");
    $('#application-instructions').hide();

    $('.top').hide();
    $('#leftcolumn').hide();
    document.getElementById("main").style.height="512px";

})

function showApplicationInstructions() {
    $('#application-instructions').show();
}

