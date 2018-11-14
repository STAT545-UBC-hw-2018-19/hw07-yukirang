#' Set levels to the order in which they appear in the data,
#'
#' @param a factor
#' @return factor
#' @export
fsetis <- function(a){
  if (!is.factor(a)) {
    stop("Please input a factor")
  }
  # levels is an optional vector of the unique values (as character strings) that x might have taken.
  # The default is the unique set of values taken by as.character(x)
  return(factor(x, levels = as.character(unique(a))))
}
