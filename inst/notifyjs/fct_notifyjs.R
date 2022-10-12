#' Send a notification
#'
#' @description Send a notification via notifyjs
#'
#' @return Used only for side effect
#' @param msg The text to display in the notification
#' @param ... Named args passed to notifyjs
#' @param session Shiny session object
#'
#' @example notify_success('Hello World!')
#'
#' @noRd
notify_success <- function(
  msg,
  ...,
  session = shiny::getDefaultReactiveDomain()
) {
  if (is.null(session)) {
    return(msg)
  }
  golem::invoke_js(
    session = session,
    "success",
    list(
      msg = msg,
      options = list(...)
    )
  )
}

notify_warn <- function(
  msg,
  ...,
  session = shiny::getDefaultReactiveDomain()
) {
  if (is.null(session)) {
    return(msg)
  }
  golem::invoke_js(
    session = session,
    "warn",
    list(
      msg = msg,
      options = list(...)
    )
  )
}

notify_error <- function(
  msg,
  ...,
  session = shiny::getDefaultReactiveDomain()
) {
  if (is.null(session)) {
    return(msg)
  }
  golem::invoke_js(
    session = session,
    "error",
    list(
      msg = msg,
      options = list(...)
    )
  )
}