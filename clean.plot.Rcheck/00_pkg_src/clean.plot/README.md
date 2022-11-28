---
title: "readme"
author: "Brooke Parker"
output: html_document
date: "2022-11-15"
---






# clean.plot

<!-- badges: start -->
<!-- badges: end -->

The R package clean.plot enables the user to easily remove all NA values from a set of data, as well as create a scatter plot that will save itself automatically under a file name and destination designated by the user.

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

This is a basic example which shows you how to solve a common problem:

``` r
library(clean.plot)
data_cleaning(dataset)
```

