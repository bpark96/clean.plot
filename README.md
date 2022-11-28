---
title: "readme"
author: "Brooke Parker"
output: html_document
date: "2022-11-15"
---






# clean.plot

<!-- badges: start -->
<!-- badges: end -->

The R package *clean.plot* enables the user to easily remove all NA values from a set of data, as well as create a scatter plot that will save itself automatically as a .png file under a file name designated by the user.

## Installation

You can install the development version of clean.plot like so:

``` r
install.packages("tidyverse")
library(tidyverse)
install.packages("devtools")
library(devtools)
install.packages("ggplot2")
library(ggplot2)
install_github("bpark96/clean.plot")
library(clean.plot)
```

## Example

These are basic examples for each of the two functions. Just substitute your own values.

``` r
library(clean.plot)
# Make sure to input this before utilizing any of the functions. This will load the package containing the functions into the library, so it is ready to use.

data_cleaning(surveys)
# Designate the dataset you wish to remove NA values from. It should be loaded into the environment panel ahead of time.

create_plot(surveys, "surveysplot.png", x = year, y = hindfoot_length)
# Again, be sure to have your desired dataset loaded into the environment panel. The plot will be saved as a .png to the current destination, and can be named whatever you would like so long as the quotations and .png is used. X and Y values should be contained within your chosen dataset, and X must be a numerical value (otherwise, an error message will result).
```

