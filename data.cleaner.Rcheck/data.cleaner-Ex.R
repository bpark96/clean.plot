pkgname <- "data.cleaner"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('data.cleaner')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("data_cleaning")
### * data_cleaning

flush(stderr()); flush(stdout())

### Name: data_cleaning
### Title: This function cleans all of the NA values from a data set.
### Aliases: data_cleaning

### ** Examples

data_cleaning(dataset_name)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
