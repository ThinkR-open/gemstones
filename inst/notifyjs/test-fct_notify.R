test_that("with_i18n works", {
  expect_equal(
    notify_success(
      "pif",
      session = NULL
    ),
    "pif"
  )
  expect_equal(
    notify_warn(
      "paf",
      session = NULL
    ),
    "paf"
  )
  expect_equal(
    notify_error(
      "pouf",
      session = NULL
    ),
    "pouf"
  )

  expect_equal(
    notify_success(
      "pif",
      session = shiny::MockShinySession$new()
    ),
    NULL
  )
  expect_equal(
    notify_warn(
      "paf",
      session = shiny::MockShinySession$new()
    ),
    NULL
  )
  expect_equal(
    notify_error(
      "pouf",
      session = shiny::MockShinySession$new()
    ),
    NULL
  )
})
