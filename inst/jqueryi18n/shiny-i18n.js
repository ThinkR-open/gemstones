$(document).ready(function() {
    $.get("www/locales.json", function(data) {
        i18next.init({
            lng: "en",
            resources: data
        }, function(err, t) {
            jqueryI18next.init(i18next, $);
            $("html").localize();
        });
    })
})