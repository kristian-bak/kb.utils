test_that("Test: cut_var", {

  set.seed(1)

  x <- sample(x = 1:100, size = 1000, replace = TRUE)

  y <- cut_var(x = x)

  expect_true(class(y) == "numeric")

  expect_false(is.na(y) %>% any())

  expect_equal(y %>%
    unique() %>%
    length(),
    20)

})
