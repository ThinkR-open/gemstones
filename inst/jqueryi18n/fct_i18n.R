#' with_i18n
#'
#' @description Add i18n to the tag
#'
#' @return An HTML tag with data-i18n added.
#' @param tag An HTML tag.
#' @param i18n The i18n entry.
#'
#' @example with_i18('Hello World!', 'hello-world')
#'
#' @noRd
with_i18n <- function(
  tag,
  i18n
) {
  if (class(tag)[1] == "character") {
    tag <- htmltools::tags$span(tag)
  }
  htmltools::tagAppendAttributes(
    tag,
    `data-i18n` = i18n
  )
}

#' localize
#'
#' @description Launch a localize on an element
#'
#' @return Used for side-effect
#'
#' @param element The element to localize()
#' @param session Shiny session object
#'
#' @example localize("#nav")
#'
#' @noRd
localize <- function(
  element = "html",
  session = shiny::getDefaultReactiveDomain()
) {
  golem::invoke_js(
    "localize",
    list(
      element = element
    )
  )
}

#' Change language
#'
#' @description Set the i18n language
#'
#' @return Used for side-effect
#'
#' @param lang The language to used in i18next.changeLanguage();
#' @param session Shiny session object
#'
#' @example change_language("fr")
#'
#' @noRd
change_language <- function(
  lang = "en",
  session = shiny::getDefaultReactiveDomain()
) {
  golem::invoke_js(
    "changeLanguage",
    list(
      lang = lang
    )
  )
}

#' Get language
#'
#' @description Get the i18n language
#'
#' @return Used for side-effect
#'
#' @param id The shiny id to get the language
#' @param session Shiny session object
#'
#' @example get_language()
#'
#' @noRd
get_language <- function(
  id,
  session = shiny::getDefaultReactiveDomain()
) {
  golem::invoke_js(
    "Language",
    list(
      id = id
    )
  )
}