test_that("with_i18 works", {
  res <- with_i18("hello", "Helloworld")
  expect_true(
    inherits(res, "shiny.tag")
  )
  expect_equal(
    res$attribs$`data-i18n`,
    "Helloworld"
  )
  expect_equal(
    res$children[[1]],
    "hello"
  )
})