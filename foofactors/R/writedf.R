#' write data frames from plain text delimited files
#' @param df data frame
#' @param filepath charactor
#' @return charactor filename
#' @export

writedf <- function(df, filepath){
  # split the path by '.' and unlist it as a vector
  file_split <- unlist(strsplit(filepath, ".", fixed = TRUE))
  # get the file extention
  extention <- file_split[length(file_split)]
  # check whether it's plain text
  if(extention == "txt"){
    # read as data frame if the file is plain text
    return(write.table(x,"filename.txt",sep="\t",row.names=FALSE))
  }else{
    stop("Need a plain text delimited file.")
  }
}
