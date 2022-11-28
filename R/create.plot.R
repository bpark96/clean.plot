#' This function creates a scatter plot using designated x and y values and saves the plot to a file.
#' 
#' @param filepath the name of a dataset that has been loaded into the
#' environment or its corresponding file path 
#' @param savefile the name that your plot file will be saved as
#' @param x = x value
#' @param y = y value
#' 
#' @return If non-integer values are entered for the plot function, console will print "Error: Values must be integers!"
#' 
create_plot <- function(filepath, savefile){
  data_raw <- tidyverse::read_csv(filepath)
  my_plot <- data_raw %>%
    ggplot2::ggplot(data = data_raw, mapping = aes(x = 1, y = 1)) + geom_point()
  ggplot2::ggsave(savefile, width = 20, height = 14, units = "cm", dpi = 300)
  if (!isTRUE(all(x == floor(x)))){
    return(my_plot)
  } else {
    print ("Error: Values must be integers!")
  }
}