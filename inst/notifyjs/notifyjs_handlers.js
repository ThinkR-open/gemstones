$(document).ready(function() {
    Shiny.addCustomMessageHandler('success', function(arg) {
        arg.options.className = "success";
        $.notify(arg.msg, arg.options);
    })
    Shiny.addCustomMessageHandler('warn', function(arg) {
        arg.options.className = "warn";
        $.notify(arg.msg, arg.options);
    })
    Shiny.addCustomMessageHandler('error', function(arg) {
        arg.options.className = "error";
        $.notify(arg.msg, arg.options);
    })
});