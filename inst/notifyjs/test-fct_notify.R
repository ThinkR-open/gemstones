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
})