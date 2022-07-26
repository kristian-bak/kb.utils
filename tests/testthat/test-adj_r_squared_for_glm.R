test_that("Test: adj_r_squared_for_glm", {

  set.seed(1)
  df <- data.frame(x = 1:100, eps = rnorm(n = 100))
  df$y <- floor(exp(df$x + df$eps))
  m <- glm(y ~ x, data = df, family = poisson())
  adj_r_squared <- adj_r_squared_for_glm(obj = m)

  expect_equal(adj_r_squared, 0.9713841)

})
