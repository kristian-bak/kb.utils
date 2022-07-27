#' Loop counter
#' @param i integer indicating the ith iteration
#' @param n integer indicating number of iterations in the loop
#' @export
#' @examples
#' n <- 10
#'
#' for (i in 1:n) {
#'
#'   Sys.sleep(0.2)
#'
#'   loop_counter(i = i, n = n)
#'
#' }
loop_counter <- function(i, n) {

  cat("\r", i, "of", n)
  flush.console()

}
