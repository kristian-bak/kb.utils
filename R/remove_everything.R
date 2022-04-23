#' Remove everything before desired pattern
#' @param pattern character string to search for
#' @param x vector of any class
#' @export
#'
remove_everything_before <- function(pattern, x) {

  gsub(paste0(".*", pattern), "", x)

}

#' Remove everything after desired pattern
#' @param pattern character string to search for
#' @param x vector of any class
#' @export
#'
remove_everything_after <- function(pattern, x) {

  gsub(paste0(pattern, ".*"), "", x)

}

#' Remove everything but digits
#' @param x vector of any class
#' @return character vector of same length as x
#' @export
remove_everything_but_digits <- function(x) {

  gsub("[^[:digit:].]", "", x)

}

#' Remove brackets
#' @param x vector of any class
#' @details This is a helper function for cut_var designed to remove brackets after calling remove_everything_*
#'
remove_brackets <- function(x) {
  gsub("\\(|\\[|]", "", x)
}
