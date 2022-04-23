test_that("Test: catch_error", {

  out1 <- catch_error(expr = 2 + 2)

  expect_true(
    out1$value == 4
  )

  expect_true(
    is.null(out1$warning)
  )

  expect_true(
    is.null(out1$error)
  )

  out2 <- catch_error(expr = as.numeric("hello"))

  expect_true(
    is.na(out2$value)
  )

  expect_false(
    is.null(out2$warning)
  )

  expect_true(
    is.null(out2$error)
  )

  out3 <- catch_error(expr = if (NA == 2) {print("hello")})

  expect_true(
    is.null(out3$value)
  )

  expect_true(
    is.null(out3$warning)
  )

  expect_false(
    is.null(out3$error)
  )

})
