#' Factor is charactor
#'
#' Detect factors that should be character because the
#' number of unique values equals its length.
#'
#' @param x factor
#'
#' @return logical
#' @export
#'
#' @examples
#' is_char(factor(c('Bird', 'Plane', 'Superman')))


is_char <- function(x) {
  return(length(x) == length(unique(x)))
}
