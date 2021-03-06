% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/r_squared_for_glm.R
\name{adj_r_squared_for_glm}
\alias{adj_r_squared_for_glm}
\title{Adjusted R squared for glm}
\usage{
adj_r_squared_for_glm(obj)
}
\arguments{
\item{obj}{glm object}
}
\value{
Adjusted R squared for glm (numeric value)
}
\description{
Adjusted R squared for glm
}
\examples{
set.seed(1)
df <- data.frame(x = 1:100, eps = rnorm(n = 100))
df$y <- floor(exp(df$x + df$eps))
m <- glm(y ~ x, data = df, family = poisson())
adj_r_squared_for_glm(obj = m)
}
