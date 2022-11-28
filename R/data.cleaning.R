#' This function cleans all of the NA values from a data set.
#' 
#' @param filepath the name of a dataset that has been loaded into the
#' environment or its corresponding file path 
#' @param savefile the name that your plot file will be saved as
#' 
#' @return If data cleaning is unsuccessful, console will print "NAs still present!".
#' 
data_cleaning <- function(filepath){
  data_clean <- filepath %>%
    tidyverse::drop_na()
  if(sum(!is.na(d_c)) == 0){
    return(data_clean)
  } else {
    print ("NAs still present!!")
  }
}
