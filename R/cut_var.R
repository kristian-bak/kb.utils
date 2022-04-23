#' Cut var
#' @param x vector
#' @param breaks breaks used to cut variable
#' @export
#'
cut_var <- function(x, breaks) {

  if (missing(breaks)) {
    breaks <- quantile(x, probs = seq(from = 0, to = 1, by = 0.05))
  }

  z <- cut(x, breaks = breaks, include.lowest = TRUE)

  a <- remove_everything_after(pattern = ",", x = z) %>%
    remove_brackets() %>%
    as.numeric()

  b <- remove_everything_before(pattern = ",", x = z) %>%
    remove_brackets() %>%
    as.numeric()

  c <- a + ((b - a) / 2)

  return(c)

}
