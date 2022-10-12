#' Add notifyjs
#'
#' Add notifyjs to your app
#'
#' @inheritParams golem::add_module
#' @return TRUE invisibly
#' @export
#'
#' @examples
#' if (interactive()) {
#'   use_notifyjs()
#' }
use_notifyjs <- function(
  pkg = golem::get_golem_wd(),
  with_test = TRUE
) {
  rlang::is_installed("golem")
  # Downloading the external resources
  golem::use_external_js_file(
    "https://rawgit.com/notifyjs/notifyjs/master/dist/notify.js",
    "i18next.min.js"
  )
  # Putting stuff in the golem

  golem::use_internal_file(
    system.file(
      "notifyjs/notifyjs_handlers.js",
      package = "gemstones"
    ),
    "notifyjs_handlers.js"
  )

  file.copy(
    system.file(
      "notifyjs/fct_notifyjs.R",
      package = "gemstones"
    ),
    file.path(
      pkg,
      "R",
      "fct_notifyjs.R"
    )
  )
  if (with_test) {
    rlang::is_installed("usethis")
    usethis::use_testthat()
    file.copy(
      system.file(
        "notifyjs/test-fct_notify.R",
        package = "gemstones"
      ),
      file.path(
        pkg,
        "tests",
        "testthat",
        "test-fct_notify.R"
      )
    )
  }
  invisible(TRUE)
}
