#' This function creates a scatter plot using designated x and y values and saves the plot to a file.
#' 
#' @param dataset the name of a dataset that has been loaded into the
#' environment or its corresponding file path 
#' @param savefile the name that your plot file will be saved as
#' @param x = x value
#' @param y = y value
#' 
#' @return If a non-integer is entered for x value, console will print "Error: Value x must be an integer!"
#' 
create_plot <- function(dataset, savefile, x, y){
  my_plot <- ggplot2::ggplot(data = dataset, mapping = aes(x = {{x}}, y = {{y}})) + geom_point()
  ggplot2::ggsave(savefile, width = 20, height = 14, units = "cm", dpi = 300)
  if (!isTRUE(dataset$x)){
    return(my_plot)
  } else {
    print ("Error: Value x must be an integer!")
  }
}