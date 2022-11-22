#' This function cleans all of the NA values from a data set, as well as creates a scatter plot using designated x and y values and saves the plot to a file.
#' 
#' @param filepath the name of a dataset that has been loaded into the
#' environment or its corresponding file path 
#' @param savefile the name that your plot file will be saved as
#' 
#' @return If data cleaning is unsuccessful, console will print "NAs still present!".
#' 
#' @examples
#' data_cleaning(dataset_name)
#' create_plot(dataset_name, savefile_name, x = x_value, y = y_value)

data_cleaning <- function(filepath){
  data_clean <- filepath %>%
    drop_na()
  if(sum(!is.na(d_c)) == 0){
    return(data_clean)
  } else {
    print ("NAs still present!!")
  }
}

create_plot <- function(filepath, savefile){
  data_raw <- read_csv(filepath)
  my_plot <- data_raw %>%
    ggplot(data = data_raw, mapping = aes(x = 1, y = 1)) + geom_point()
  ggsave(savefile, width = 20, height = 14, units = "cm", dpi = 300)
  if (!isTRUE(all(x == floor(x)))){
    return(my_plot)
  } else {
    print ("Error: Values must be integers!")
  }
}