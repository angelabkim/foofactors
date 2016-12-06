#' Reorder in descending
#'
#' A version of reorder() using desc() from dplyr.
#'
#' @param x factor
#'
#' @return factor
#' @export
#'
#' @examples in_desc(factor(c('a', 'b', 'c')))
#'

in_desc <- function(x) {
  reorder(x, dplyr::desc(x))
}
