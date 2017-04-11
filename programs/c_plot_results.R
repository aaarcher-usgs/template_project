#' # Plot results example
#' 
#' Description: This R-Oxygen template program provides example code for making
#' and saving plots.
#' 
#' Notes: When you knit this file, you will be creating a plot that will
#' be stored in the "output/figures" folder. It will be saved as the name of the
#' "chunk", which is specified after the "#+" below.
#' 
#' By running the code below, you will also be saving a .png of this figure
#' directly into the "manuscript/ms_figures" folder. 
#' 
#' This set-up allows you to make many plots with this program that might be
#' used for collaborating and/or communicating preliminary results, but might
#' not end up "production-worthy" for a final manuscript or presentation (i.e.,
#' those you save directly to the manuscripts/ms_figures folder).
#' 
#' ### Preamble
#' 
#' Load libraries
#+ libraries, message = F, warning = F
library(knitr) # documentation-related
library(ezknitr) # documentation-related
library(devtools) # documentation-related

library(ggplot2) # analysis-related

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
#' Load irisdata with predicted values
#+ scatterplot
load("data/output_data/iris_predicted.Rdata")


#' _____________________________________________________________________________
#' ## Exploratory figure
#' 
#' Let's simply look at the raw data in a scatter plot
ggplot(data = irisdata, aes(x = pl.std, y = sl.std, colour = common))+
  geom_point()


#' _____________________________________________________________________________
#' ## Manuscript figure 1
#' 
#' Figure 1 in our paper, made to look more publishable. The width and height
#' for the plot are specified below for the chunk (after the hashtag-plus
#' symbols) and within the ggsave command.
#' 
#' 
#+ figure1, width = 4, height = 2.6
ggplot(data = irisdata, aes(x = pl.std, y = sl.std))+
  geom_point(aes(shape = common))+
  geom_line(aes(y = predict))+
  ylab("Standardized sepal length")+
  xlab("Standardized petal length")+
  theme_minimal()+
  theme(legend.position = "bottom",
        legend.title = element_blank())

#' Using the ezspin() line below, I have made sure that this figure above looks
#' good. Now I can save it directly as a .png in the manuscripts folder.
#' 
ggsave(filename = "manuscript/ms_figures/figure1.png", 
       device = "png", width = 4, height = 3)

#' _____________________________________________________________________________
#' ### Footer
#' 
#' Session Info
devtools::session_info()
#' This document was "spun" with:
#' 
#' ezspin(file = "programs/c_plot_results.R", out_dir = "output", fig_dir = "figures", keep_md = F)
#' 
#' *You can run the ezspin() code above to create an html in the "output" folder
#' and any associated figures will get put into the "figures" folder.*