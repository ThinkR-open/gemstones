test_that("with_i18n works", {
  expect_equal(
    notify_success(
      "pif", 
      sessions = NULL
    ),
    "pif"
  )
  expect_equal(
    notify_warn(
      "paf", 
      sessions = NULL
    ),
    "paf"
  )
  expect_equal(
    notify_error(
      "pouf", 
      sessions = NULL
    ),
    "pouf"
  )
})