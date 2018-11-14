#' Read data frames from plain text delimited files
#'
#' @param filepath charactor
#' @return data frame
#' @export

readdf <- function(filepath){
 # split the path by '.' and unlist it as a vector
 file_split <- unlist(strsplit(filepath, ".", fixed = TRUE))
 # get the file extention
 extention <- file_split[length(file_split)]
 # check whether it's plain text
 if(extention == "txt"){
   # read as data frame if the file is plain text
   return(data.frame(read.table(filepath)))
 }else{
   stop("Need a plain text delimited file.")
 }
}
