#' # Processing data example
#' 
#' Description: This R-Oxygen template program provides example code to 
#' load raw data from a csv, process it into a form ready for analysis,
#' and save it as a .Rdata file. 
#' 
#' 
#' ### Preamble
#' 
#' Load libraries
#+ libraries, message = F, warning = F
library(knitr) # documentation-related
library(ezknitr) # documentation-related
library(devtools) # documentation-related

# analysis-related

#' Clear environment and set seed
#' 
#' *Note: for reproducibility, it is important to include these. Clearing the
#' environment ensures that you have specified all pertinent files that need
#' to be loaded, and setting the seed ensures that your analysis is 
#' repeatable*
remove(list = ls())
set.seed(2583722)

#' _____________________________________________________________________________
#' ## Load Data
#' 
#' *Note: We will be using the famous iris dataset, which can be used directly
#' by loading library(datasets). Here, I have saved it as a .csv, because it's 
#' likely that you will be processing raw data saved in a spreadsheet.*
#' 
#' Read in raw iris data
irisdata <- read.csv("data/raw_data/iris.csv")

#' View head of data
head(irisdata)

#' _____________________________________________________________________________
#' ## Scale the covariates
#' 
#' ### We want the covariates to be normalized, so we will use the scale() function.
#' 
#' Sepal length
irisdata$sl.std <- scale(x = irisdata$Sepal.Length, center = T, scale = T)

#' Sepal width
irisdata$sw.std <- scale(x = irisdata$Sepal.Width, center = T, scale = T)

#' Petal length
irisdata$pl.std <- scale(x = irisdata$Petal.Length, center = T, scale = T)

#' Petal width
irisdata$pl.std <- scale(x = irisdata$Petal.Width, center = T, scale = T)

#' _____________________________________________________________________________
#' ## Common names
#' 
#' We will want to plot these alphabetically by common name, so we will add
#' a new variable "common"
#' 
irisdata$common <- ifelse(test = irisdata$Species=="setosa",
                          yes = "beachhead iris",
                          no = ifelse(test = irisdata$Species=="versicolor",
                                      yes = "harlequin blueflag",
                                      no = "Virginia iris"))

#' _____________________________________________________________________________
#' ## Save files
#' 
#' *Note: For reproducibility sake, it's important to save the processed files
#' into the data folder and then load them into the subsequent R programs.*
#' 
#' Save the processed irisdata
save(irisdata, file = "data/processed_data/iris.Rdata")

#' _____________________________________________________________________________
#' ### Footer
#' 
#' Session Info
devtools::session_info()
#' This document was "spun" with:
#' 
#' ezspin(file = "programs/a_process_data.R", out_dir = "output", fig_dir = "figures", keep_md = F)
#' 
#' *You can run the ezspin() code above to create an html in the "output" folder
#' and any associated figures will get put into the "figures" folder.*