# template_project
Template directory structure and programs for a quantitative ecology project in R. Includes R-Markdown and R-Oxygen template programs.

## Directory structure overview

- **data** 
    - **raw_data** : store raw .csv files here
    - **processed_data** : store any data that has been processed for analysis here (e.g., in .Rdata format)
    - **output_data** : (optional) store any data or results here (e.g., model coefficients or objects, JAGS posteriors)
- **manuscript** : place to hold a draft manuscript. I have put a template R-Markdown manuscript in here with tips for producing PDFs and Microsoft Word documents from it.
    - **ms_figures** : place to hold the finalized figures that are ready for publication (or draft publications)
- **output** : place to hold any spun html documents. These are the files that you could archive through services such as Data Repository for the University of Minnesota. See some of these for examples http://conservancy.umn.edu/browse?type=author&value=ArchMiller,%20Althea%20A.
    - **figures** : when you spin R programs into html, any figures will get deposited here.
- **programs** : put all of your analysis programs here. I have made up a series of example programs, and have provided one generalized template program (z_template.R) for your use. These are written in R-Oxygen, and it is important to spin them using the ezspin() line provided at the bottom of the program and **not** the knit/spin button. 
- **Readme_template.txt** : Template readme file that could be filled out if you were planning to archive your analysis and data. Originally downloaded from the Data Repository for the University of Minnesota website, but modified for easier completion.

## How to use this template

If you would like to use this template directory structure, simply download the template_project.zip file and unzip it into your main R_projects folder. 

Then, if you would like to create a new Rproject with GitHub and RStudio using this template directory structure, follow these steps:

1. Create a new repository in your GitHub account (optionally with a README)
2. Copy the pathway to your repository (e.g., https://github.com/aaarchmiller/template_project)
3. In RStudio, File > New Project > Version Control > Git > 
4. Paste in the pathway to your repository
5. Type in project name (if not automatically populated)
6. Double check that it will be saved in your main R_projects folder and then click "Create Project"
7. Copy any of the template folders or files from your unzipped template_project into your new repository. I recommend using the full directory structure that I have provided in this template.

