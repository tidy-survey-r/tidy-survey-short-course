#' ---
#' title: "Tidy Survey Analysis in R using the srvyr Package"
#' subtitle: "Workshop Day 2 - Continuous Data"
#' author:
#'    - Stephanie Zimmer, Abt Associates
#'    - Rebecca Powell, RTI International
#'    - Isabella Velásquez, RStudio
#' date: "April 22, 2022"
#' output:
#'   xaringan::moon_reader:
#'     css: xaringan-themer-mod.css
#'     nature:
#'       slideNumberFormat: "%current%"
#'       highlightStyle: github
#'       highlightLines: true
#'       ratio: 16:9
#'       countIncrementalSlides: true
#' ---
#' 
#' 
## ----setup, include=FALSE-------------------------------------------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, message = FALSE, tidy = FALSE)

if(!require(scales)) {
   install.packages("scales")
   library(scales)
}

if(!require(hexbin)){
   install.packages("hexbin")
   library(hexbin)
}

#' 
#' 
#' class: inverse center middle
#' # Introduction
#' ---
#' 
## .small .remark-code { /*Change made here*/

##   font-size: 80% !important;

## }

## .smaller .remark-code { /*Change made here*/

##   font-size: 70% !important;

## }

#' 
#' ## Overview
#' 
#' - At the end of this workshop series, you should be able to 
#'    - Calculate point estimates and their standard errors with survey data 
#'       - Proportions, totals, and counts
#'       - Means, quantiles, and ratios
#'    - Perform t-tests and chi-squared tests
#'    - Fit regression models
#'    - Specify a survey design in R to create a survey object
#' 
#' - We will not be going over the following but provide some resources at the end
#'    - Weighting (calibration, post-stratification, raking, etc.)
#'    - Survival analysis
#'    - Nonlinear models
#' ---
#' 
#' ## About Us
#' 
#' <div class="row">
#' <div class="column">
#' <center>
#' `r knitr::include_graphics("./Images/StephanieZimmer_Headshot.jpeg")`
#' <br>
#' <b>Stephanie Zimmer</b>
#' <br>
#' Abt Associates
#' <br>
#' <a href="https://twitter.com/StatSteph">Twitter: @statsteph</a>
#' </center>
#' </div>
#' 
#' <div class="column">
#' <center>
#' `r knitr::include_graphics("./Images/RebeccaPowell_Headshot.jpeg")`
#' <br>
#' <b>Rebecca Powell</b>
#' <br>
#' RTI International
#' <br>
#' <a href="https://education.rstudio.com/trainers/people/powell+rebecca/">RStudio Education Profile</a>
#' </center>
#' </div>
#' 
#' <div class="column">
#' <center>
#' `r knitr::include_graphics("./Images/IsabellaVelasquez_Headshot.jpeg")`
#' <br>
#' <b>Isabella Velásquez</b>
#' <br>
#' RStudio
#' <br>
#' <a href="https://twitter.com/ivelasq3">Twitter: @ivelasq3</a>
#' </center>
#' </div>
#' 
#' </div>
#' 
#' --
#' 
#' #### Thank you to our volunteers!
#' 
#' **Greg Freedman-Ellis**, **Raphael Nishimura**, and **Ben Schneider** will be assisting during our breakout rooms.
#' 
#' ---
#' 
#' ## About This Workshop
#' 
#' - Hosted by Midwest Association for Public Opinion Research (MAPOR), a regional chapter of the American Association for Public Opinion Research (AAPOR).
#' 
#' - Originally delivered at AAPOR Conference in May 2021
#' 
#' <div
#' <br>
#' <br>
#' <br>
#' <center>
#' `r knitr::include_graphics("./Images/MAPOR-Logo1.png")`
#' </center>
#' </div>
#' 
#' ---
#' 
#' ## Upcoming Work
#' 
#' - Book on analyzing survey data in R, published by CRC, Taylor & Francis Group
#' 
#' - We would love your help! After each course, we will send out a survey to gather your feedback on the material, organization, etc.
#' 
#' - Keep updated by following our project on GitHub: [https://github.com/tidy-survey-r](https://github.com/tidy-survey-r)
#' 
#' ---
#' 
#' ## Overview
#' 
#' - Last week we introduced how to do survey analysis in R with categorical data
#' 
#' - Today we focus on continuous data
#' - At the end of today, you should be able to 
#'   - Calculate means and quantiles with their standard errors 
#'   
#'   - Perform t-tests 
#'   - Fit linear regression models
#' 
#' - Next week, we will discuss
#'    - Specifying a survey design object
#'    - Creating replicate weights
#'    - Creating derived/analysis/recoded variables
#'    - Reproducibility
#' 
#' ---
#' ## Overview: Workshop 2 Roadmap
#' 
#' - Quick refresh of RStudio Cloud with a warm-up exercise using the tidyverse
#' 
#' - Introduce the survey data we'll be using today
#' 
#' - Calculate point estimates for continuous data with time for practice
#' 
#' - Significance testing with t-test and linear regression models with time for practice
#' 
#' - Closing
#' 
#' ---
#' ## Logistics
#' 
#' - We will be using RStudio Cloud today to ensure everyone has access
#' 
#' - Sign-up for a free RStudio Cloud account (https://rstudio.cloud/)
#' 
#' - Access the project and files via link in email and Zoom chat
#' 
#' - Click "START" to open the project and get started
#' 
#' - RStudio Cloud has the same features and appearance as RStudio for ease of use
#' 
#' - All slides and code are available on GitHub: https://github.com/tidy-survey-r/tidy-survey-short-course
#' 
#' ???
#' Github repo is for future reference, all material on RStudio cloud
#' 
#' ---
#' ## Intro to RStudio Cloud: Penguins!!
#' 
#' - Using `palmerpenguins` data for warm-up exercises
#' 
#' - Data were collected and made available by Dr. Kristen Gorman and the Palmer Station, Antarctica LTER, a member of the Long Term Ecological Research Network.
#' 
#' - Access data through `palmerpenguins` package https://github.com/allisonhorst/palmerpenguins/
#' 
#' 
#' ####If you are using your own RStudio environment:
#' - Make sure you have `tidyverse`, `here`, and `palmerpenguins` installed
#' 
## ----inst_packages, error=FALSE, warning=FALSE, eval=FALSE----------------------------------------------------------------------------------
## # Run package installation if you don't have these packages already
## # As a reminder, installing takes package from internet to your computer
## # and only needs to be done once, not each session
## 
## install.packages(c("tidyverse", "here", "palmerpenguins"))

#' 
#' ---
#' ## Intro to RStudio Cloud: Penguins!!
#' 
#' - Load `tidyverse`, `here`, and `palmerpenguins`
#' 
#' - Look at the penguins dataset using `glimpse`
#' 
## ----load_pack1, error=FALSE, warning=FALSE-------------------------------------------------------------------------------------------------
library(tidyverse) # for tidyverse
library(here) # for file paths
library(palmerpenguins) # for warm-up data
glimpse(penguins)

#' 
#' ---
#' ## Warm-up Exercises: WarmUpExercises.Rmd
#' 
#' - <b>Let's open RStudio cloud and do some warm-up examples</b>
#' 
#' - Take 8 minutes to do these exercises in breakout rooms.
#' 
#' - Explore the penguins data
#'    - What is the mean body mass in grams of all penguins? Hint: use `summarize` and remove missing data
#'    
#'    - What is the mean length of flipper by species? Hint: use `group_by`
#'    
#'    - What is the mean flipper length by species and sex? 
#'    
#'    - Fit a simple linear regression between body mass and flipper length.
#' 
#' 
#' ---
#' ## Ex. 1: What is the mean body mass in grams of all penguins? Hint: use `summarize` and remove missing data
#' 
## ----peng_meanmass--------------------------------------------------------------------------------------------------------------------------
penguins %>%
   summarize(
     MeanBodyMass=mean(body_mass_g, 
                       na.rm=TRUE))

#' ???
#' - `na.rm=TRUE` removes missing data from the calculation
#'     - forgetting this argument will result in a value of `NA` as the function will try to average missing data
#' 
#' ---
#' ## Ex. 2: What is the mean length of flipper by species? Hint: use `group_by`
#' 
## ----peng_meanflip_species------------------------------------------------------------------------------------------------------------------
penguins %>%
   group_by(species) %>%
   summarize(
     MeanFlipperLength=mean(flipper_length_mm, 
                            na.rm=TRUE))

#' ???
#' - `group_by` allows us to look at metrics by different subgroups like species
#' - when using `group_by` follow it with `summarize` to get metrics (like average) at the group level
#' 
#' ---
#' ## Ex. 3: What is the mean flipper length by species and sex?
#' 
## ----peng_meanflip_speciessex---------------------------------------------------------------------------------------------------------------
penguins %>%
   group_by(species,sex) %>%
   summarize(
     MeanFlipperLength=mean(flipper_length_mm, 
                            na.rm=TRUE))

#' ???
#' - As we learned last week with `count`, you can also `group_by` multiple variables
#' 
#' ---
#' ## Ex. 4: Fit a simple linear regression between body mass and flipper length.
#' .small[
## ----pengLM1--------------------------------------------------------------------------------------------------------------------------------
mod1 <- lm(body_mass_g ~ flipper_length_mm, data=penguins)
summary(mod1)

#' ]
#' ???
#' - here we use the `lm` (linear model) function
#' - can also use the `glm` (generalized linear model) function
#' - equation is written as y-variable ~ x-variables
#' 
#' ---
#' class: inverse center middle
#' # Continuous survey data analysis
#' ---
#' ## Overview of Survey Analysis using `srvyr` Package
#' 
#' 1. Create a `tbl_svy` object using: `as_survey_design` or `as_survey_rep`
#' 
#' 2. Subset data (if needed) using `filter` (subpopulations)
#' 
#' 3. Specify domains of analysis using `group_by` 
#' 
#' 4. Within `summarize`, specify variables to calculate including means, medians, quantiles and more
#' 
#' 
#' <b>Note: We will be teaching this in the reverse order!!!</b>
#' ???
#' - Session 3 will cover how to create the survey design object
#' 
#' ---
#' ## Dataset: Residential Energy Consumption Survey (RECS) 2015
#' 
#' - Energy consumption/expenditures collected through energy suppliers
#' 
#' - Fielded 14 times between 1950 and 2015
#' 
#' - Topics include appliances, electronics, heating, a/c, temperatures, water heating, lighting, energy bills, respondent demographics, and energy assistance
#' 
#' - Funded by the Energy Information Administration
#' 
#' - <b>Target Population</b>: Primary occupied housing units in the US
#' 
#' - <b>Mode</b>: In-person, paper, and web interview mode
#' 
#' - <b>Sample Information</b>: BRR Replicate weights included for variance estimation
#' 
#' https://www.eia.gov/consumption/residential/index.php
#' 
#' ???
#' - We have subset the columns of this data and created derived variables, code in repository
#' 
#' ---
#' ## Set-up for Analysis
#' - `srvyr` package uses tidy-syntax but uses the `survey` package behind it to do calculations
#' 
#' - If using your own RStudio environment, install both packages:
## ----inst_srv, eval=FALSE-------------------------------------------------------------------------------------------------------------------
## # Install survey and srvyr packages
## 
## remotes::install_github("bschneidr/r-forge-survey-mirror")
## install.packages("srvyr")

#' 
#' - First, we will set-up a design object and talk about what it means in Session 3
## ----recs_des, error=FALSE, warning=FALSE---------------------------------------------------------------------------------------------------
library(survey) # for survey analysis
library(srvyr) # for tidy survey analysis

recs <- read_rds(here("Data", "recs.rds"))

recs_des <- recs %>%
   as_survey_rep(weights=NWEIGHT,
                 repweights=starts_with("BRRWT"),
                 type="Fay",
                 rho=0.5,
                 mse=TRUE)


#' ???
#' - need to install github version of survey package if you want CIs with quantiles
#' - we will cover setting up the sample design object later
#' 
#' ---
#' ## Weighted Analysis for Continuous Variables
#' 
#' - Common functions for continuous summaries
#'    - survey_mean
#'    - survey_total (like sum)
#'    - survey_median
#'    - survey_quantile
#'    - survey_ratio
#' 
#' - Always call within `summarize`/`summarise`
#' ---
#' ## `survey_mean` Syntax
#' 
## ----survey_mean_syn, eval=FALSE------------------------------------------------------------------------------------------------------------
## survey_mean(
##   x,
##   na.rm = FALSE,
##   vartype = c("se", "ci", "var", "cv"),
##   level = 0.95,
##   proportion = FALSE,
##   deff = FALSE,
##   df = NULL,
##   ...
## )

#' 
#' To calculate a survey mean, we use this in `summarize`/`summarise`
## ----survey_mean_syn2, eval=FALSE-----------------------------------------------------------------------------------------------------------
## survey_design_object %>%
##    summarize(
##       mean_varname=survey_mean(x = continuous_varname)
##       )

#' 
#' ???
#' Only required argument is the variable
#' 
#' ---
#' ## `survey_mean` Example 1: On average, how much do US households spend on energy each year?
#' 
#' This is an example using the `recs_des` survey design object and `survey_mean` function defaults
#' 
## ----survey_mean_ex1------------------------------------------------------------------------------------------------------------------------
recs_des %>%
   summarize(
      TD_mean=survey_mean(x = TOTALDOL)
      )

#' ---
#' ## `survey_mean` Example 2: What is the average temperature US households set their homes to on a summer day?
#' 
#' Run this code. What happens?
#' 
## ----survey_mean_ex2, eval=FALSE------------------------------------------------------------------------------------------------------------
## recs_des %>%
##    summarize(
##       TD_mean=survey_mean(x = SummerTempDay)
##       )

#' ---
#' ## `survey_mean` Example 2: What is the average temperature US households set their homes to on a summer day?
#' 
#' Run this code. What happens?
#' 
## ----survey_mean_ex2_r, error=TRUE----------------------------------------------------------------------------------------------------------
recs_des %>%
   summarize(
      TD_mean=survey_mean(x = SummerTempDay)
      )

#' 
#' <b>How do we fix this code?</b>
#' 
#' ???
#' - missing data in temperature, need `na.rm=TRUE`
#' 
#' ---
#' ## `survey_mean` Example 2: Missing data solution
#' 
## ----survey_mean_ex2_sol, error=TRUE, tidy=FALSE--------------------------------------------------------------------------------------------
recs_des %>%
   summarize(
      TD_mean = survey_mean(
        x = SummerTempDay, 
        na.rm = TRUE )#<<
      )

#' 
#' ---
#' ## `survey_median` Syntax
#' 
## ----survey_median_syn, eval=FALSE----------------------------------------------------------------------------------------------------------
## survey_median(
##   x,
##   na.rm = FALSE,
##   vartype = c("se", "ci"),
##   level = 0.95,
##   df = NULL,
##   ...
## )

#' 
#' ???
#' Only required argument is the variable
#' 
#' 
#' ---
#' ## `survey_median` Example: What is the median temperature US households set their homes to on a summer day?
#' 
#' .pull-left[
## ----survey_median_fib, eval=FALSE----------------------------------------------------------------------------------------------------------
## recs_des %>%
##    summarize(
##       TD_median=survey_median(x=_________,
##                           na.rm=_________)
##       )

#' ]
#' --
#' .pull-right[
## ----survey_median_fib_sol------------------------------------------------------------------------------------------------------------------
recs_des %>%
 summarize(
   TD_median=survey_median(x=SummerTempDay,
                           na.rm=TRUE)
 )

#' ]
#' ???
#' - Mean temperature set is 72.4 degrees Fahrenheit with a standard error of 0.08
#' - Median temperature set is 72 degrees Fahrenheit with a standard error of 0.25
#' 
#' 
#' ---
#' ## `survey_quantile` Syntax
#' 
## ----survey_quantile_syn, eval=FALSE--------------------------------------------------------------------------------------------------------
## survey_quantile(
##   x,
##   quantiles, #<<
##   na.rm = FALSE,
##   vartype = c("se", "ci", "var", "cv"),
##   level = 0.95,
##   df = NULL,
##   ...
## )

#' 
#' ???
#' - need both the variable and the quantiles in a vector e.g. (c(.25, .75))
#' 
#' ---
#' ## `survey_quantile` Example 1: What are the 1st and 3rd quantile of dollars spent on energy?
#' 
## ----survey_quantile_ex1, error=TRUE--------------------------------------------------------------------------------------------------------
recs_des %>%
   summarize(
      Spent=survey_quantile(
        x = TOTALDOL,
        quantiles = c(.25, .75)) #<<
      )

#' ???
#' - This estimates the 25th and 75th percentile
#' 
#' ---
#' ## `survey_quantile` Example 2:  What are the 1st and 3rd quantile of dollars spent on energy with confidence intervals?
#' 
## ----survey_quantile_ex2, error=TRUE--------------------------------------------------------------------------------------------------------
recs_des %>%
   summarize(
      Spent=survey_quantile(x = TOTALDOL,
                            quantiles = c(.25, .75),
                            vartype = "ci" #<<
         )
      )

#' 
#' ---
#' ## `survey_quantile` Updated Output
#' 
## ----survey_quantile_ex2a, error=TRUE-------------------------------------------------------------------------------------------------------
recs_des %>%
   summarize(
      Spent=survey_quantile(x = TOTALDOL,
                            quantiles = c(.25, .75),
                            vartype = "ci"
         )
      ) %>% 
   pivot_longer(cols=c(Spent_q25:Spent_q75_upp),
                names_to="varname",values_to="value") %>% 
   mutate(Quantile=paste0(str_sub(varname,8,9),"th Quantile"),
          type=case_when(str_detect(varname,"_low")~"Lower_Bound",
                         str_detect(varname,"_upp")~"Upper_Bound",
                         TRUE~"Estimate")) %>% 
   pivot_wider(id_cols=Quantile,names_from=type,values_from=value)

#' 
#' 
#' ---
#' ## `survey_ratio` Syntax
#' 
#' - Note this estimates: $\sum x_i/\sum y_i$ not $\sum \frac{x_i}{y_i}$
#' 
## ----survey_ratio_syn, eval=FALSE-----------------------------------------------------------------------------------------------------------
## survey_ratio(
##   numerator, #<<
##   denominator, #<<
##   na.rm = FALSE,
##   vartype = c("se", "ci", "var", "cv"),
##   level = 0.95,
##   deff = FALSE,
##   df = NULL,
##   ...
## )

#' 
#' 
#' ---
#' ## `survey_ratio` Example: What is the average dollar per BTU spent on energy?
#' 
## ----survey_ratio_ex------------------------------------------------------------------------------------------------------------------------
recs_des %>%
   summarize(
      DolPerBTU=survey_ratio(
         numerator = TOTALDOL, #<<
         denominator = TOTALBTU, #<<
         na.rm = TRUE
         )
      )

#' ???
#' - BTU (British Thermal Units)
#' 
#' ---
#' ## Breakout rooms: Practice time
#' 
#' - Open ContinuousExercises.Rmd and work through Part 1
#' 
#' - We will take 15 minutes. Use this time for the exercises and questions.
#' 
#' ---
#' ## Weighted Analysis for Continuous Variables: Domain Analysis
#' 
#' - If we want to get estimates by another variable, we need to add a `group_by` statement before doing the analysis.
#' 
#' - Example: What is the average amount of dollars spent on electricity for households that use AC and those that do not use AC?
#' 
## ----domain_ex------------------------------------------------------------------------------------------------------------------------------
recs_des %>%
  group_by(ACUsed) %>% #<<
  summarize(
    ElBill=survey_mean(DOLLAREL, 
                       na.rm=TRUE)
  )

#' ---
#' ## Domain Analysis: Totals
#' 
#' - If we want the overall average electric bill too, use the `cascade` function instead of `summarize`
#' 
## ----domain_ex_casc-------------------------------------------------------------------------------------------------------------------------
recs_des %>%
   group_by(ACUsed) %>%
   cascade(
      ElBill=survey_mean(DOLLAREL, 
                         na.rm=TRUE)
   )


#' 
#' <b>Note: The overall average electric bill appears as NA</b>
#' 
#' ---
#' ## Domain Analysis: Totals
#' 
#' - Also can add sample and pop sizes
#' 
## ----domain_tot-----------------------------------------------------------------------------------------------------------------------------
recs_des %>%
   group_by(ACUsed) %>%
   cascade(
      ElBill=survey_mean(DOLLAREL, na.rm=TRUE),
      N=survey_total(!is.na(DOLLAREL)), #<<
      n=unweighted(sum(!is.na(DOLLAREL))) #<<
   )


#' 
#' ???
#' - survey_total gets a weighted total
#' - unweighted does just that, an unweighted estimate, can also get an unweighted mean or any other stat
#' 
#' ---
#' ## Weighted Analysis for Specific Subpopulations
#' 
#' - filtering (subsetting) the data should be done AFTER specifying the design to ensure accurate standard errors
#' 
#' - Use the `filter` function after creating the survey design object and before summarizing
#' 
#' Wrong way:
## ----filter_bad, eval = FALSE---------------------------------------------------------------------------------------------------------------
## data %>%
##   filter(state=="NC") %>% #<<
##   as_survey_design(...) %>%
##   summarize(AvgAge=mean(Age))

#' 
#' Right way:
## ----filter_good, eval=FALSE----------------------------------------------------------------------------------------------------------------
## data %>%
##   as_survey_design(...) %>%
##   filter(state=="NC") %>% #<<
##   summarize(AvgAge=mean(Age))

#' 
#' ???
#' - Required to ensure correct calculation when sub-population is not in all strata or PSUs
#' 
#' ---
#' ## Subpopulation Example: Average electric cost of single family homes
#' 
## ----subpop1--------------------------------------------------------------------------------------------------------------------------------
recs_des %>%
  filter(HousingUnitType %in% c("Single-family detached",
                                "Single-family attached")) %>%
  summarize(
    ElBill=survey_mean(DOLLAREL, 
                       na.rm=TRUE)
  )

#' 
#' ???
#' - Filter goes AFTER the design object
#' - Previous syntax showed the creation of the design object, but with this example, we already created it
#' 
#' ---
#' ## Comparisons with t-tests: `svyttest` Syntax
#' 
#' - t-tests are done in the package `survey` not `srvyr` but you can use the same design object
#' 
## ----ttest_syn1, eval=FALSE-----------------------------------------------------------------------------------------------------------------
## svyttest(formula, # outcome~group for two-sample, outcome~0 for one-sample
##          design,
##          na.rm = FALSE
##          ....)

#' 
#' ???
#' - Uses standard R formula notation
#' - will go over examples of 1-sample, 2-sample, and paired t-test
#' 
#' ---
#' ## `svyttest` Syntax with `%>%`
#' 
## ----ttest_syn2, eval=FALSE-----------------------------------------------------------------------------------------------------------------
## recs_des %>%
##    svyttest(formula=,
##             design=., #<<
##             na.rm=TRUE)

#' 
#' ???
#' - To use in tidyverse need the "dot" notation as highlighted here
#' - Pipe then puts the design object in the correct placement
#' 
#' 
#' ---
#' ## `svyttest` Syntax with `%>%`
#' 
## ----ttest_syn3, eval=FALSE-----------------------------------------------------------------------------------------------------------------
## recs_des %>%
##    svyttest(design=., #<<
##             formula=,
##             na.rm=TRUE)

#' 
#' ???
#' - Order doesn't matter for the arguments when you use the "dot" notation
#' 
#' 
#' ---
#' ## `svyttest` Example 1: One-sample t-test
#' 
#' - I keep my house at 68 degrees at night during the summer. Is this different from the national average?
#' 
## ----ttest_ex1------------------------------------------------------------------------------------------------------------------------------
recs_des %>%
   svyttest(design=.,
            formula=I(SummerTempNight-68)~0, #<<
            na.rm=TRUE)

#' 
#' ???
#' - Note the I notation, this does the arithmetic before modeling
#' 
#' ---
#' ## `svyttest` Example 2: Comparing two variables
#' 
#' - Do people keep their house the same temperature at night during the summer and the winter?
#' 
## ----ttest_ex2------------------------------------------------------------------------------------------------------------------------------
recs_des %>%
   svyttest(design=.,
            formula=I(SummerTempNight-WinterTempNight)~0,
            na.rm=TRUE)

#' 
#' ???
#' - this is a paired t-test
#' - testing whether the difference is 0 for each household
#' 
#' ---
#' ## `svyttest` Example 3: Two-sample t-test
#' 
#' - Are electric bills different between those with and without A/C?
#' 
## ----ttest_ex3------------------------------------------------------------------------------------------------------------------------------
recs_des %>%
   svyttest(design=.,
            formula=DOLLAREL~ACUsed,
            na.rm=TRUE)

#' 
#' 
#' 
#' ---
#' ## Linear Regression or ANOVA: `svyglm` Syntax
#' 
#' - As with t-tests, regressions are done in the package `survey` not `srvyr` but you can use the same design object
#' 
#' - Syntax is similar between t-test and glm
#' 
## ----glm_syn, eval=FALSE--------------------------------------------------------------------------------------------------------------------
## svyglm(formula,
##        design,
##        na.action, #default is na.omit
##        ....)

#' ---
#' ## `svyglm` Example: Two-sample
#' 
#' Same example as two-sample t-test: Are electric bills different between those with and without A/C?
#' 
#' <b>t-test:</b>
## ----twosamp_ex_ttest, eval=FALSE-----------------------------------------------------------------------------------------------------------
## recs_des %>%
##    svyttest(design=.,
##             formula=DOLLAREL~ACUsed,
##             na.rm=TRUE) #<<

#' 
#' <b>glm:</b>
## ----twosamp_ex_glm, eval=FALSE-------------------------------------------------------------------------------------------------------------
## recs_des %>%
##    svyglm(design=.,
##           formula=DOLLAREL~ACUsed,
##           na.action=na.omit) #<<

#' 
#' ???
#' - one major difference in how you specify to ignore NA values
#' - svyttest can only have 2-levels in group variable
#' - svyglm, the variable on right can be anything (continuous or factor)
#' 
#' ---
#' ## `svyglm` Example: Two-sample
#' 
#' Are electric bills different between those with and without A/C?
#' .small[
## ----twosamp_ex_ttest_run-------------------------------------------------------------------------------------------------------------------
recs_des %>%
   svyglm(design=.,
          formula=DOLLAREL~ACUsed,
          na.action=na.omit) %>%
  summary()

#' ]
#' 
#' ???
#' - same results as t-test
#' 
#' ---
#' ## `svyglm` Example 1: ANOVA Test
#' 
#' Does temperature of AC at night vary by region?
#' .smaller[
## ----anova_ex-------------------------------------------------------------------------------------------------------------------------------
recs_des %>%
   svyglm(design=.,
          formula=SummerTempNight~Region,
          na.action=na.omit) %>%
  summary()


#' ]
#' 
#' ???
#' - Region is a factor variable, if it is numeric - this will treat it like a linear model
#' 
#' ---
#' ## `svyglm` Example 2: Linear Model
#' 
#' - Is there a relationship between square footage and electric bill?
#' - Let's review the data first with a ggplot. <i>Note we use the original data and do <b>NOT</b> use the survey design object.</i>
#' 
## ----plot_sf_elbill-------------------------------------------------------------------------------------------------------------------------
p <- recs %>%
  ggplot(aes(x=TOTSQFT_EN, y=DOLLAREL, weight=NWEIGHT)) +
  geom_hex(color="white") + 
  scale_fill_gradient(guide="colourbar",name="Count of Housing Units",labels=comma)


#' 
#' ???
#' - When using the original data, make sure you include the weight variable
#' 
#' ---
#' ## `svyglm` Example 2: Linear Model
## ----plot_sf_elbill_disp, echo=FALSE, fig.asp=9/16, fig.align="center", out.width="90%", dpi=300--------------------------------------------
p +
  theme_bw() 

#' 
#' 
#' ---
#' ## `svyglm` Example 2: Linear Model
#' .small[
## ----lm_ex----------------------------------------------------------------------------------------------------------------------------------
m_electric_sqft <- recs_des %>%
   svyglm(design=.,
          formula=DOLLAREL~TOTSQFT_EN,
          na.action=na.omit)
summary(m_electric_sqft)

#' ]
#' 
#' ???
#' - for every additional square foot, the electricity cost is on average 24.6 cents more
#' ---
#' ## Breakout rooms: Practice time
#' 
#' - Open ContinuousExercises.Rmd and work through Part 2
#' 
#' - We will take 15 minutes. Use this time for the exercises and questions.
#' 
#' ---
#' class: inverse center middle
#' # Closing
#' ---
#' ## Resources for more learning
#' 
#' - https://cran.r-project.org/web/packages/srvyr/vignettes/srvyr-vs-survey.html
#' 
#' - https://r-survey.r-forge.r-project.org/survey/ 
#'   - Includes more advanced modeling
#' 
#' ---
#' ## Thank You!
#' 
#' ### We hope you learned a lot in this session!
#' 
#' Please let us know if you have any feedback on this workshop. All feedback is welcome!
#' 
#' 
#' ## Questions?
#' 
#' ---
#' ## Sources
#' 
#' - <font size="2">*Residential Energy Consumption Survey: Using the 2015 Microdata File to Compute Estimates and Standard Errors.* U.S. Department of Energy (2017) https://www.eia.gov/consumption/residential/data/2015/pdf/microdata_v3.pdf </font>
#' 
#' - <font size="2">Horst AM, Hill AP, Gorman KB (2020). palmerpenguins: Palmer Archipelago (Antarctica) penguin data. R package version 0.1.0. https://allisonhorst.github.io/palmerpenguins/ </font>
#' 
#' - <font size="2">T. Lumley (2020) "survey: analysis of complex survey samples". R package version 4.0. https://r-survey.r-forge.r-project.org/survey/ </font>
#' 
#' - <font size="2">Greg Freedman Ellis and Ben Schneider (2020). srvyr: 'dplyr'-Like Syntax for Summary Statistics of Survey Data. R package version 1.0.0. https://CRAN.R-project.org/package=srvyr </font>
#' 
#' - <font size="2">Hadley Wickham, Romain François, Lionel Henry and Kirill Müller (2021). dplyr: A Grammar of Data Manipulation. R package version 1.0.5. https://CRAN.R-project.org/package=dplyr </font>
#' 
#' 
#' ---
#' ## Session info - platform
#' 
## ----si, echo=FALSE-------------------------------------------------------------------------------------------------------------------------
library(xaringan)
library(knitr)
library(remotes)
#library(DT)
j <- devtools::session_info(pkgs="attached")
print(j$platform)

#' 
#' ---
#' ## Session info - packages
#' 
## ----sipack1, echo=FALSE--------------------------------------------------------------------------------------------------------------------
print(j$packages)

