test_that("Test: remove_everything_but_digits", {

  expect_equal(remove_everything_but_digits(x = "hello 123"), "123")

  expect_equal(remove_everything_but_digits(x = "hello"), "")

  expect_equal(remove_everything_but_digits(x = "-"), "")

})
