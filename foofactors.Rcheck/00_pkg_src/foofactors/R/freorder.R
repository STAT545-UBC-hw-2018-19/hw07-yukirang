#' Reorder in decendence
#'
#' Reordering with desc()
#'
#' @param a factor
#' @return factor reodered
#' @export


freorder <- function(a){
  if (!is.factor(a)) {
    stop("Please input a factor")
  }
  return(levels(reorder(a, dplyr::desc(a))))
}
