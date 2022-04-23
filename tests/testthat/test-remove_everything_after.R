test_that("Test: remove_everything_after", {

  res <- remove_everything_after(pattern = "l", x = "hello")

  expect_equal(res, "he")

})
