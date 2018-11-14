#' Detect factors that should be character

#' @param a factor
#'
#' @return boolean
#' @export

fdetect <- function(a) {
  if (!is.factor(a)) {
    stop("Please input a factor")
  }
  # check whether length of unique values == length
  return(length(unique(a)) == length(a))
}
