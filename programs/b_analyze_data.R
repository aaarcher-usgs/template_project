#' # Analyze data example program
#' 
#' Description: This R-Oxygen template program provides example analysis code. 
#' 
#' 
#' ### Preamble
#' 
#' Load libraries
#+ libraries, message = F, warning = F
library(knitr) # documentation-related
library(ezknitr) # documentation-related
library(devtools) # documentation-related

library(splines) # analysis-related

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
#' *Note: now that we have processed our iris data for analysis, we will
#' load that file rather than the raw csv*
#' 
#' 
#' Processed irisdata
load("data/processed_data/iris.Rdata")

#' _____________________________________________________________________________
#' ## Run model with non-linear spline
#' 
#' We want to test a non-linear relationship between sepal length and petal 
#' length, so we use a spline.
#' 
#' Run model
lm_out <- lm(sl.std~ns(pl.std, df = 3), data = irisdata)
summary(lm_out)

#' Store predicted values for plotting
irisdata$predict <- predict(lm_out)

#' _____________________________________________________________________________
#' ## Save files
#' 
#' *Note: For reproducibility sake, it's important to save the processed files
#' into the data folder as .csv or .Rdata files and then load them into the
#' subsequent R programs.*
#' 
#' Save irisdata with predicted values
save(irisdata, file = "data/output_data/iris_predicted.Rdata")

#' _____________________________________________________________________________
#' ### Footer
#' 
#' Session Info
devtools::session_info()
#' This document was "spun" with:
#' 
#' ezspin(file = "programs/b_analyze_data.R", out_dir = "output", fig_dir = "figures", keep_md = F)
#' 
#' *You can run the ezspin() code above to create an html in the "output" folder
#' and any associated figures will get put into the "figures" folder.*