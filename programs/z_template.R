#' # Template program
#' 
#' Description: This R-Oxygen template program provides example layout and 
#' organization for making a clean and easily followable html document 
#' for your R program. 
#' 
#' Notes: Hashtags denote hierarchy. The number of hashtags correspond with 
#' document headings as follows (also an example of how to insert numbered
#' lists in R-Oxygen.)
#' 
#' 1. Title, only use on line 1 of program
#' 2. Main R program headers
#' 3. Sub-headers, I also use these for document preamble and footer
#' 4. Sub-sub-headers, and so forth
#' 
#' You can also include LaTeX-formated equations and symbols such as 
#' $\alpha^2$ and $\beta=2x$, **bolded** text, and *italicized* text just as
#' in an R-Markdown document.
#' 
#' ### Preamble
#' 
#' Load libraries
#+ libraries, message = F, warning = F
library(knitr) # documentation-related
library(ezknitr) # documentation-related
library(devtools) # documentation-related

library(doBy) # analysis-related

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
#' 
#' 

#' _____________________________________________________________________________
#' ## 1st Section of Code
#' 
#' 
#' 

#' _____________________________________________________________________________
#' ## 2nd Section of Code, and so on
#' 
#' 
#' 

#' _____________________________________________________________________________
#' ## Save files
#' 
#' *Note: For reproducibility sake, it's important to save the processed files
#' into the data folder as .csv or .Rdata files and then load them into the
#' subsequent R programs.*
#' 

#' _____________________________________________________________________________
#' ### Footer
#' 
#' Session Info
devtools::session_info()
#' This document was "spun" with:
#' 
#' ezspin(file = "programs/z_template.R", out_dir = "output", fig_dir = "figures", keep_md = F)
#' 
#' *You can run the ezspin() code above to create an html in the "output" folder
#' and any associated figures will get put into the "figures" folder.*