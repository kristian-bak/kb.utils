#' R squared for glm
#' @param obj glm object
#' @return R squared for glm (numeric value)
#' @export
#' @details R squared for glm is defined as 1 - (D_M / D_0) where D_M and D_0 is the deviance for respectively the chosen model and the null model
#' @examples
#' set.seed(1)
#' df <- data.frame(x = 1:100, eps = rnorm(n = 100))
#' df$y <- floor(exp(df$x + df$eps))
#' m <- glm(y ~ x, data = df, family = poisson())
#' r_squared_for_glm(obj = m)
r_squared_for_glm <- function(obj) {

  1 - (obj$deviance / obj$null.deviance)

}

#' Adjusted R squared for glm
#' @param obj glm object
#' @return Adjusted R squared for glm (numeric value)
#' @export
#' @examples
#' set.seed(1)
#' df <- data.frame(x = 1:100, eps = rnorm(n = 100))
#' df$y <- floor(exp(df$x + df$eps))
#' m <- glm(y ~ x, data = df, family = poisson())
#' adj_r_squared_for_glm(obj = m)
adj_r_squared_for_glm <- function(obj) {

  r_squared <- r_squared_for_glm(obj = obj)

  n <- nrow(obj$data)
  p <- ncol(obj$model) - 1

  1 - ((1 - r_squared) * (n - 1) / (n - p - 1))

}
