#' This function cleans all of the NA values from a data set.
#' 
#' @param filepath the name of a dataset that has been loaded into the
#' environment or its corresponding file path 
#' 
#' @return Nothing will print if data cleaning is successful.
#' If unsuccessful, console will print "NAs still present!").
#' 
#' @examples
#' data_cleaning(dataset_name)

data_cleaning <- function(filepath){
  data_clean <- filepath %>%
    drop_na()
  if(sum(!is.na(d_c)) == 0){
    return(data_clean)
  } else {
    print ("NAs still present!!")
  }
}
