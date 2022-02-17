$(document).ready(function() {
    Shiny.addCustomMessageHandler('changeLanguage', function(arg) {
        i18next.changeLanguage(arg.lang);
    })
    Shiny.addCustomMessageHandler('localize', function(arg) {
        $(arg.element).localize();
    })
});