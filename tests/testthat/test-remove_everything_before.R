test_that("Test: remove_everything_before", {

  res <- remove_everything_before(pattern = "l", "hello")

  expect_equal(res, "o")

})
