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
with_i18 <- function(
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