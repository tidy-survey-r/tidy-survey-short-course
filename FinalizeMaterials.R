### This program creates PDF slides, PPTX slides, and R files from the Rmd files

# remotes::install_github("jhelvy/xaringanBuilder")
# remotes::install_github('rstudio/chromote')
# install.packages('pdftools')
# install.packages('officer')

library(knitr)
library(here)

mypurl <- function(folder, fn){
   purl(here(folder, stringr::str_c(fn, ".Rmd")),
        output=here(folder, stringr::str_c(fn, ".R")),
        documentation=2)
   
}

# Day 1 processing

mypurl("Presentation", "Slides-day-1")
xaringanBuilder::build_html(
   input=here("Presentation", "Slides-day-1.Rmd"),
   output_file=here("Presentation", "Slides-day-1.html"))
xaringanBuilder::build_pdf(
   input=here("Presentation", "Slides-day-1.html"),
   output_file=here("Presentation", "Slides-day-1.pdf"),
   partial_slides= TRUE)
xaringanBuilder::build_pptx(
   input=here("Presentation", "Slides-day-1.pdf"),
   output_file=here("Presentation", "Slides-day-1.pptx"),
   partial_slides= TRUE)
mypurl("Exercises", "CategorialExercises")
mypurl("Exercises", "CategorialExercises_solutions")

# Day 1/2 processing
mypurl("Exercises", "WarmUpExercises")
mypurl("Exercises", "WarmUpExercises_solutions")

# Day 2 processing
mypurl("Presentation", "Slides-day-2")
xaringanBuilder::build_html(
   input=here("Presentation", "Slides-day-2.Rmd"),
   output_file=here("Presentation", "Slides-day-2.html"))
xaringanBuilder::build_pdf(
   input=here("Presentation", "Slides-day-2.html"),
   output_file=here("Presentation", "Slides-day-2.pdf"),
   partial_slides= TRUE)
xaringanBuilder::build_pptx(
   input=here("Presentation", "Slides-day-2.pdf"),
   output_file=here("Presentation", "Slides-day-2.pptx"),
   partial_slides= TRUE)
mypurl("Exercises", "ContinuousExercises")
mypurl("Exercises", "ContinuousExercises_solutions")



# Day 3 processing

mypurl("Presentation", "Slides-day-3")
xaringanBuilder::build_html(
   input=here("Presentation", "Slides-day-3.Rmd"),
   output_file=here("Presentation", "Slides-day-3.html"))
xaringanBuilder::build_pdf(
   input=here("Presentation", "Slides-day-3.html"),
   output_file=here("Presentation", "Slides-day-3.pdf"),
   partial_slides= TRUE)
xaringanBuilder::build_pptx(
   input=here("Presentation", "Slides-day-3.pdf"),
   output_file=here("Presentation", "Slides-day-3.pptx"),
   partial_slides= TRUE)
mypurl("Exercises", "DesignDerivedVariablesExercises")
mypurl("Exercises", "DesignDerivedVariablesExercises_solutions")
