#' ---
#' title: "Tidy Survey Analysis in R using the srvyr Package"
#' subtitle: "Workshop Day 3 - Design Objects, Variables, and Process"
#' author:
#'    - Stephanie Zimmer, Abt Associates
#'    - Rebecca Powell, RTI International
#'    - Isabella Velásquez, RStudio
#' date: "April 29, 2022"
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
## ----setup, include=FALSE-------------------------------------------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, message = FALSE, tidy = FALSE)
library(survey)
library(srvyr)
library(tidyverse)

#' 
#' class: inverse center middle
#' # Introduction
#' 
#' ---
#' 
#' 
## .small .remark-code { /*Change made here*/

## font-size: 80% !important;

## }

## .smaller .remark-code { /*Change made here*/

## font-size: 70% !important;

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
#' 
#' ---
#' 
#' ## About Us
#' 
#' <div class="row">
#' <div class="column">
#' <center>
#' `r knitr::include_graphics("Images/StephanieZimmer_Headshot.jpeg")`
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
#' `r knitr::include_graphics("Images/RebeccaPowell_Headshot.jpeg")`
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
#' `r knitr::include_graphics("Images/IsabellaVelasquez_Headshot.jpeg")`
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
#' 
#' --
#' 
#' #### Thank you to our volunteers!
#' 
#' **Greg Freedman-Ellis** and **Raphael Nishimura** will be assisting during our breakout rooms.
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
#' `r knitr::include_graphics("Images/MAPOR-Logo1.png")`
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
#' class: inverse center middle
#' 
#' # Workshop Overview
#' 
#' ---
#' 
#' ## Workshop Series Roadmap
#' 
#' - Get familiar with RStudio Cloud with a warm-up exercise using the tidyverse (day 1)
#' 
#' - Introduce the survey data we'll be using in the workshop (day 1)
#' 
#' - Analysis of categorical data with time for practice (day 1)
#' 
#' - Analysis of continuous data with time for practice (day 2)
#' 
#' - Survey design objects, constructing replicate weights, and creating derived variables (today)
#' 
#' 
#' 
#' 
#' ---
#' ## Logistics
#' 
#' - We will be using RStudio Cloud today to ensure everyone has access
#' 
#' - Sign-up for a free RStudio Cloud account 
#'    - Access the project and files via link in email and Zoom chat
#'    - Click "START" to open the project and get started
#'    - Rstudio Cloud has the same features and appearance as RStudio for ease of use
#' 
#' - All slides and code are available on GitHub: https://github.com/tidy-survey-r/tidy-survey-short-course
#' 
#' ???
#' Github repo is for future reference, all material on RStudio cloud
#' 
#' ---
#' class: inverse center middle
#' 
#' # Specifying sample design objects
#' 
#' ---
#' ## Overview of Survey Analysis using `srvyr` Package
#' 
#' Discussing step 1! Steps 2-4 discussed in prior workshops
#' 
#' 1. Create a `tbl_svy` object using: `as_survey_design` or `as_survey_rep`
#' 
#' 2. Subset data (if needed) using `filter` (subpopulations)
#' 
#' 3. Specify domains of analysis using `group_by` 
#' 
#' 4. Within `summarize`, specify variables to calculate including means, totals, proportions, quantiles and more
#' 
#' ---
#' ## Review of sampling designs
#' 
#' These features can be combined to form one design
#' 
#' - Simple random sampling: every unit has the same chance of being selected
#'    - Without replacement: units can only be selected once
#'    - With replacement: units can be selected more than once
#' 
#' - Systematic sampling: sample $n$ individuals from a ordered list and sampling individuals at an interval with a random starting point
#' 
#' - Probability proportional to size: probability of selection is proportional to "size"
#' 
#' - Stratified sampling: divide population into mutually exclusive subgroups (strata). Randomly sample within each stratum
#' 
#' - Clustered sampling: divide population into mutually exclusive subgroups (clusters). Randomly sample clusters and then individuals within clusters
#' 
#' ???
#' - If $N$ is big enough then treat as with replacement. If $N$ is not too big and WOR, need FPC
#' - PPS - size is possibly related to outcome. Several methods (not discussed today)
#' - Stratified clustered design are very common in population surveys
#' 
#' ---
#' ## Determining the design
#' 
#' - Look at documentation associated with the analysis file
#' 
#' - Keywords to look for: methodology, design, analysis guide, technical documentation
#' 
#' - Documentation will indicate the variables needed to specify the design. Look for:
#'    - weight (almost always)
#'    - strata and/or clusters/PSUs. Sometimes pseudo-strata and pseudo-cluster OR
#'    - replicate weights (this is used instead of strata/clusters for analysis)
#'    - might also see finite population correction or population sizes
#' 
#' - Documentation may include syntax for SAS, SUDAAN, Stata and/or R!
#' 
#' ---
#' ## Example: 2020 ANES
#' 
#' - https://electionstudies.org/data-center/2020-time-series-study/
#' 
#' - Opened the file "User Guide and Codebook"
#' 
#' - Section "Data Analysis, Weights, and Variance Estimation": Page 8-12 includes information on weights and strata/cluster variables
#' 
#' > For analysis of the complete set of cases using pre-election data only, including all
#' > cases and representative of the 2020 electorate, use the full sample pre-election
#' > weight, V200010a. For analysis including post-election data for the complete set of
#' > participants (i.e., analysis of post-election data only or a combination of pre- and
#' > post-election data), use the full sample post-election weight, V200010b.
#' > Additional weights are provided for analysis of subsets of the data...
#' 
#' For weight | Use variance unit/PSU/cluster | and use variance stratum
#' -----------|-------------------------------|-------------------------
#' V200010a| V200010c| V200010d
#' V200010b| V200010c| V200010d
#' 
#' ---
#' ## Example: RECS 2015
#' 
#' - https://www.eia.gov/consumption/residential/data/2015/index.php?view=microdata
#' 
#' - Opened the file "Using the 2015 microdata file to compute estimates and standard errors (RSEs)"
#' 
#' - Page 4:
#' 
#' > The following instructions are examples for calculating any RECS estimate using the final weights
#' > (NWEIGHT) and the associated RSE using the replicate weights (BRRWT1 – BRRWT96).
#' 
#' > Let $\epsilon$ be the Fay coefficent ... and $\epsilon=0.5$
#' 
#' - Page 9: Syntax given for survey package which is similar to srvyr (as we will see)
#' 
## ----recsexamp, eval=FALSE------------------------------------------------------------------------------------------------------------------
## library(survey)
## RECS15 <- read.csv(file='< location where file is stored >', header=TRUE, sep=",")
## sampweights <- RECS15$NWEIGHT
## brrwts <- RECS15[, grepl(“^BRRWT”, names(RECS15))]
## des <- svrepdesign(weights=sampweights, repweights=brrwts, type="Fay",
##                    rho=0.5, mse=TRUE, data=RECS15)

#' 
#' ---
#' ## Specify the sampling design: no replicate weights provided
#' 
#' - Specifying the sampling design when you don't have replicate weights
#' 
#' - This creates a `tbl_svy` object that then correctly calculates weighted estimates and SEs using methods from Workshop 1 and 2
#' 
## ----sd_tsl_syn, eval=FALSE-----------------------------------------------------------------------------------------------------------------
## as_survey_design(
##    .data,
##    ids = NULL,#cluster IDs/PSUs
##    strata = NULL,#strata variables
##    variables = NULL,#defaults to all in .data
##    fpc = NULL,#variables defining the fpc
##    nest = FALSE,#TRUE/FALSE - relabel clusters to nest within strata
##    check_strata = !nest, #check that clusters are nested in strata
##    weights = NULL,# weight variable
##    ...
## )

#' 
#' ---
#' ## Syntax for common designs
#' 
## ----sd_tsl_gen_ex, eval=FALSE--------------------------------------------------------------------------------------------------------------
## # simple random sample (SRS)
## apisrs %>% as_survey_design(fpc = fpc)
## 
## # stratified sample
## apistrat %>% as_survey_design(strata = stype, weights = pw)
## 
## # one-stage cluster sample
## apiclus1 %>% as_survey_design(ids = dnum, weights = pw, fpc = fpc)
## 
## # two-stage cluster sample, weights computed from pop size
## apiclus2 %>% as_survey_design(ids = c(dnum, snum), fpc = c(fpc1, fpc2))
## 
## # stratified, cluster design
## apistrat %>% as_survey_design(ids = dnum, strata = stype, weights =pw, nest = TRUE)
## 

#' 
#' - examples from `srvyr` help documentation
#' 
#' ---
#' ## ANES Example
#' 
#' For weight | Use variance unit/PSU/cluster | and use variance stratum
#' -----------|-------------------------------|-------------------------
#' V200010b| V200010c| V200010d
#' 
## ----anesdatin, eval=FALSE------------------------------------------------------------------------------------------------------------------
## options(width=130)
## library(tidyverse) # for tidyverse
## library(here) # for file paths
## library(srvyr) # for tidy survey analysis
## anes <- read_rds(here("Data", "anes_2020.rds")) %>%
##    mutate(Weight=V200010b/sum(V200010b)*231592693)
## 
## anes_des <- anes %>%
##    as_survey_design(weights = Weight,
##                     strata = V200010d,
##                     ids = V200010c,
##                     nest = TRUE)
## summary(anes_des)

#' 
#' ---
#' ## ANES Example (cont'd)
#' .smaller[
## ----anesprint, ref.label="anesdatin", echo=FALSE-------------------------------------------------------------------------------------------

#' ]
#' 
#' ---
#' ## RECS Example
#' 
#' - Final weights: NWEIGHT
#' Replicate weights: BRRWT1 – BRRWT96
#' 
## ----recsin, eval=FALSE---------------------------------------------------------------------------------------------------------------------
## options(width=130)
## recs <- read_rds(here("Data", "recs.rds"))
## 
## recs_des <- recs %>%
##    as_survey_rep(weights=NWEIGHT,
##                  repweights=starts_with("BRRWT"),
##                  type="Fay",
##                  rho=0.5,
##                  mse=TRUE)
## 
## summary(recs_des)

#' 
#' 
#' ---
#' ## RECS Example (cont'd)
#' .smaller[
## ----recsprint, ref.label="recsin", echo=FALSE----------------------------------------------------------------------------------------------

#' ]
#' 
#' 
#' ---
#' ## Create Survey Design Object for ACS
#' 
#' Fill in the blanks
#' - Analysis weight: PWGTP
#' - replicate weights: PWGTP1-PWGTP180
#' - jackknife with scale adjustment of 4/80
## ----sd_acs_fib, eval=FALSE-----------------------------------------------------------------------------------------------------------------
## acs_des <- acs_pums %>%
##    as_survey_rep(
##       weights=___________,
##       repweights=___________,
##       type=___________,
##       scale=_________
##    )

#' --
#' 
## ----sd_acs_fib_sol, eval=FALSE-------------------------------------------------------------------------------------------------------------
## acs_des <- acs_pums %>%
##    as_survey_rep(
##       weights=PWGTP,
##       repweights=stringr::str_c("PWGTP", 1:80),
##       type="JK1",
##       scale=4/80
##    )
## 

#' ---
#' ## Create Survey Design Object for CPS 2011 Supplement
#' 
#' Fill in the blanks
#' - Analysis weight: wtsupp
#' - replicate weights: repwtp1 -repwtp160
#' - BRR
## ----sd_cps_fib, eval=FALSE-----------------------------------------------------------------------------------------------------------------
## cps_des <- cps %>%
##    as_survey_rep(
##       weights=___________,
##       repweights=___________,
##       type=___________
##    )

#' --
## ----sd_cps_fib_sol, eval=FALSE-------------------------------------------------------------------------------------------------------------
## cps_des <- cps %>%
##    as_survey_rep(
##       weights=wtsupp,
##       repweights=starts_with("repwtp"),
##       type="BRR"
##    )

#' ---
#' ## Create Survey Design Object for NHANES
#' 
#' Fill in the blanks
#' - Analysis weight: WTINT2YR
#' - Variance Stratum: SDMVSTRA
#' - Variance Primary Sampling Unit: VPSU
## ----sd_nhanes_fib, eval=FALSE--------------------------------------------------------------------------------------------------------------
## nhanes_des <- nhanes %>%
##    as_survey_design(
##       weights=___________,
##       ids=___________,
##       strata=___________,
##       fpc=___________
##    )

#' --
## ----sd_nhanes_fib_sol, eval=FALSE----------------------------------------------------------------------------------------------------------
## nhanes_des <- nhanes %>%
##    as_survey_design(
##       weights=WTINT2YR,
##       ids=VPSU,
##       strata=SDMVSTRA,
##       fpc=NULL
##    )

#' ---
#' ## Create Survey Design Object for LEMAS 2016
#' 
#' Fill in the blanks
#' - Analysis weight: ANALYSISWEIGHT
#' - Variance Stratum: STRATA
#' - FPC: FRAMESIZE
## ----sd_lemas_fib, eval=FALSE---------------------------------------------------------------------------------------------------------------
## lemas_des <- lemas %>%
##    as_survey_design(
##       weights=___________,
##       ids=___________,
##       strata=___________,
##       fpc=___________
##    )

#' --
#' 
## ----sd_lemas_fib_sol, eval=FALSE-----------------------------------------------------------------------------------------------------------
## lemas_des <- lemas %>%
##    as_survey_design(
##       weights=ANALYSISWEIGHT,
##       ids=1,
##       strata=STRATA,
##       fpc=FRAMESIZE
##    )

#' ---
#' ## Breakout rooms: Practice time
#' 
#' - Open DesignDerivedVariablesExercises.Rmd and work on Part 1
#' 
#' - We will take 15 minutes. Use this time for the exercises and questions.
#' 
#' ---
#' class: inverse center middle
#' 
#' # Creating replicate weights
#' 
#' ---
#' ## Creating replicate weights syntax
#' 
#' - Begin with a design object (e.g. `tsl_des`) and then create replicate weights
#' 
#' - "auto" uses JKn for stratified, JK1 for unstratified designs
#' 
#' - See help file for `survey::svrepdesign` for more information on replicate weight types
#' 
## ----repsyn, eval=FALSE---------------------------------------------------------------------------------------------------------------------
## tsl_des %>%
##    as_survey_rep(
##       type = c("auto", "JK1", "JKn", "BRR", "bootstrap", "subbootstrap", "mrbbootstrap", "Fay"),
##       ...
##    )

#' 
#' ???
#' - Not covering the types of replicate weights and when to use today, just syntax
#' 
#' ---
#' ## Create Replicate Weights: example 1 (jackknife)
#' 
#' - Since this is not stratified, automatically used JK1
#' 
#' .smaller[
## ----sd_create_rep--------------------------------------------------------------------------------------------------------------------------
data(api)
dclus1 <- apiclus1 %>% as_survey_design(ids = dnum, weights = pw, fpc = fpc)
rclus1 <- as_survey_rep(dclus1)
summary(rclus1)


#' ]
#' ---
#' ## Create Replicate Weights: example 2 (bootstrap)
#' 
#' - Specifying bootstrap weights
#' 
#' .smaller[
## ----sd_create_boot-------------------------------------------------------------------------------------------------------------------------
bclus1 <- as_survey_rep(dclus1, type="bootstrap", replicates=100)
summary(bclus1)


#' ]
#' 
#' ---
#' class: inverse center middle
#' 
#' # Creating analysis variables
#' ## Best practices
#' 
#' ---
#' ## Overview
#' 
#' - Terminology: Analysis variable, constructed variable, derived variable, recoded variables
#' 
#' - Variables created from other variables
#' 
#' - Examples:
#' 
#'    - Creating a categorical variable from a continuous variable: Creating a categorical income variable from a continuous variable
#'    
#'    - Collapsing levels of a categorical variable: Collapsing a 5-level party identification variable into 3 levels
#'    
#'    - Creating a construct one or more variables: Binge drinking is defined as men who consumer 5 or more drinks in one sitting OR women who consume 4 or more drinks in one sitting.
#' 
#' - Best practice to create code to check your variable was created as intend
#' 
#' ---
#' ## Code example - creating categorical variable
#' 
#' V201507x is respondent age: -9=Refused
#' 
## ----anesin2, echo=FALSE--------------------------------------------------------------------------------------------------------------------
anes_in <- anes %>%
   select(starts_with("V2"))

#' 
#' 
## ----derived1, eval=FALSE-------------------------------------------------------------------------------------------------------------------
## anes_age <- anes_in %>%
##    mutate(
##       Age = if_else(V201507x > 0, as.numeric(V201507x), NA_real_),
##       AgeGroup = cut(Age, c(17, 29, 39, 49, 59, 69, 200),
##                      labels = c("18-29", "30-39", "40-49", "50-59", "60-69", "70 or older")))
## 
## anes_age %>%
##    group_by(AgeGroup) %>%
##    summarise(
##       minAge = min(Age),
##       maxAge = max(Age),
##       minV = min(V201507x),
##       maxV = max(V201507x),
##       NAV= sum(is.na(V201507x)),
##       NAAge=sum(is.na(Age)),
##       N=n()
##    )
## 

#' 
#' 
#' ---
#' ## Code example - creating categorical variable: output
#' 
## ----derived1b, ref.label="derived1", echo=FALSE--------------------------------------------------------------------------------------------

#' 
#' ---
#' ## Code example - collapsing levels
#' V202073 indicates who the person voted for
#' 
## ----votetab--------------------------------------------------------------------------------------------------------------------------------
count(anes_in, V202073)

#' 
#' ---
#' ## Code example - collapsing levels
#' Recode V202073 as Biden, Trump, Other, and missing for unknown/no one
#' 
## ----derived2, eval=FALSE-------------------------------------------------------------------------------------------------------------------
## anes_vote <- anes_in %>%
##    mutate(VotedPres2020_selection = factor(
##       case_when(
##          V202073 == 1 ~ "Biden",
##          V202073 == 2 ~ "Trump",
##          V202073 >= 3~ "Other",
##          TRUE ~ NA_character_
##       ),
##       levels = c("Biden", "Trump", "Other")))
## 
## anes_vote %>% count(VotedPres2020_selection, V202073)

#' 
#' ---
#' ## Code example - collapsing levels: output
## ----derived2b, echo=FALSE, ref.label="derived2"--------------------------------------------------------------------------------------------

#' 
#' ???
#' - Any issues with this output?
#' - Should DK/Refuse be coded as other?
#' 
#' 
#' ---
#' ## Code example - collapsing levels - fix
#' Recode V202073 as Biden, Trump, Other, and missing for unknown/no one
#' 
## ----derived2c, eval=FALSE------------------------------------------------------------------------------------------------------------------
## anes_vote <- anes_in %>%
##    mutate(VotedPres2020_selection = factor(
##       case_when(
##          V202073 == 1 ~ "Biden",
##          V202073 == 2 ~ "Trump",
##          V202073 >= 3 & V202073 <= 8~ "Other",
##          TRUE ~ NA_character_
##       ),
##       levels = c("Biden", "Trump", "Other")))
## 
## anes_vote %>% count(VotedPres2020_selection, V202073)

#' 
#' ---
#' ## Code example - collapsing levels: output
## ----derived2d, echo=FALSE, ref.label="derived2c"-------------------------------------------------------------------------------------------

#' 
#' 
#' ---
#' ## Code example - creating construct
#' 
## ----acsin, cache=TRUE, echo=FALSE, message=FALSE, warning=FALSE, results="hide"------------------------------------------------------------
library(tidycensus)
dat19_in <- get_pums(variables=c("NP", "HINCP"), state="37", puma=c("01301", "01302"), year=2019, survey="acs1",
                     variables_filter=list(NP=1:20, RELSHIPP=20))

#' 
#' - Creating poverty level indicator from household size and income for Durham County, NC
#' 
#' - Data source: 2019 1-year ACS microdata
#' 
#' - In NC (and most states), poverty guideline is as follows:
#' 
#' Persons in Household|Poverty guideline
#' --------------------|---------------
#' 1|$12,490
#' 2|$16,910
#' 3|$21,330
#' 4|$25,750
#' 5|$30,170
#' 6|$34,590
#' 7|$39,010
#' 8|$43,430
#' 9+|Add $4,420 for each additional person
#' 
#' ---
#' ## Code example - creating construct
#' NP is the number of persons in a household, HINCP is the household income
#' 
## ----der3, eval=FALSE-----------------------------------------------------------------------------------------------------------------------
## dat19_pov <- dat19_in %>%
##    mutate(PovGuide=case_when(
##       NP==1~12490,
##       NP==2~16910,
##       NP==3~21330,
##       NP==4~25750,
##       NP==5~30170,
##       NP==6~34590,
##       NP==7~39010,
##       NP==8~43430,
##       NP>=9~43430+(NP-8)*4420
##    ),
##    FPL=HINCP<=PovGuide
##    )
## 
## dat19_pov %>%
##    count(NP, PovGuide)
## 
## p <- dat19_pov %>% ggplot(aes(x=HINCP, y=NP, colour=FPL)) +
##    facet_wrap(~NP) + geom_point() + geom_vline(aes(xintercept=PovGuide))

#' 
#' ---
#' ## Code example - creating construct: output
#' 
## ----der3b, ref.label="der3", echo=FALSE----------------------------------------------------------------------------------------------------


#' 
#' ---
#' ## Code example - creating construct: output
## ----der3c, echo=FALSE, fig.width=14--------------------------------------------------------------------------------------------------------
print(p)

#' 
#' 
#' 
#' 
#' ---
#' ## Breakout rooms: Practice time
#' 
#' - Open DesignDerivedVariablesExercises.Rmd and work on Part 2
#' 
#' - We will take 15 minutes. Use this time for the exercises and questions.
#' 
#' ---
#' class: inverse center middle
#' 
#' # Reproducible research
#' 
#' ---
#' # Reproducible research overview
#' 
#' Someone with the same data should be able to reproduce the same results
#' 
#' - Tools to help this
#' 
#'    - R projects
#'    
#'    - here package
#'    
#'    - R Markdown
#'    
#' - Processes to help this
#'    - Batching code
#' 
#'    - Be organized - create documentation and a clear folder structure
#'    
#'    - Version control
#'    
#'    
#' ???
#' - Overview of tools, not exhaustive instruction
#'    
#' ---
#' # R projects and the here package
#' - [R projects](https://r4ds.had.co.nz/workflow-projects.html#rstudio-projects) specify the root folder and other R options
#' 
#' - Stop doing this: `setwd("C:\Users\zimmers\Documents\tidy-survey-short-course")`
#'    
#' - here package makes relative paths easy: Relative from where .Rproj file is or current file (if no project)
#' 
#' - here package makes sure to create path correctly for OS (e.g. \ for Windows and / for Linux/Mac)
#' 
#' - Example
#' 
## ----hereexamp, eval=TRUE-------------------------------------------------------------------------------------------------------------------
list.files(here())

list.files(here("RawData", "RECS_2015"))

#' ???
#' 
#' - this is default behavior
#' 
#' ---
#' # R Markdown
#' 
#' - R Markdown combines R code with text
#' 
#' - Each time document is Knitted, a self-contained session is started. 
#' 
#'    - Prevents problems with depending on something in your environment that aren't explicitly called out
#'    
#' - Knit to PDF, DOCX, HTML, PPTX, and more
#' 
#' - Don't copy/paste output to your manuscript/report. Make your manuscript/report with R Markdown
#' 
#' - Automatic table/figure numbering. If using Word, check out `officedown` and `officer`
#' 
#' - Can create parameterized reports. Example: run an analysis for each state and each state gets a report
#' 
#' - For beginners: https://rmarkdown.rstudio.com/lesson-1.html
#' 
#' ???
#' - Example: Program did optimal sample allocation with tables of numbers. We got a bigger budget! I only had to change one thing and re-run and in seconds, I had a new report
#' 
#' ---
#' # Batching R code
#' 
#' OK, you want to stick with .R files. What can you do?
#' 
#' - [Compiling R Scripts](https://rmarkdown.rstudio.com/articles_report_from_r_script.html)
#'    - In RStudio, use the Compile Report feature under File menu. Create output from your code and code runs in self-contained session
#'    
#'    - In code, use `rmarkdown::render(filename.R)`
#'    
#'    - Creates HTML, PDF, or Word document with your code, console output, and plots
#' 
#' - Batch from command line (Terminal)
#' 
#'    - Linux: `R CMD BATCH --no-save filename.R &`
#'    
#'    - Windows (something like): `"C:\Program Files\R\R-4.1.3\bin\R.exe CMD BATCH --no-save filename.R &`
#'    
#'    - Creates a .Rout file with your console output, timing information, and plots in PDFs (unless saved another way). .Rout file can be viewed in a text editor of your choice or Word
#'    
#' ---
#' # Documentation and organization
#' 
#' - Create a README file
#' 
#' - Set up folders in an easy to follow manner
#' 
#' - Example set-up
#' 
#'       ```
#'       recs-analysis
#'       └───Analysis
#'           │   01_ProcessData.Rmd
#'           |   01_ProcessData.html
#'           │   02_EDA.Rmd
#'           |   02_EDA.html
#'       └───Data
#'       │   └───Raw
#'       │   │   codebook_publicv4.xlsx
#'       │   │   microdata_v3.pdf
#'       │   │   recs2015_public_v4.csv
#'       │   └───Analysis
#'       │       │   recs.rds
#'       │   README.md
#'       │   recs-analysis.Rproj
#'       ```
#' ---
#' # Version control
#' 
#' - Version control is a process to track and manage changes in code
#' 
#' - Common method (and has integration with RStudio) is GitHub
#' 
#' - Document why you change analysis over time
#' 
#' - Collaborate with others
#' 
#' - Resource to **Git** started: https://happygitwithr.com/
#' 
#' ---
#' # Useful packages for tables
#' 
#' - [kableExtra](http://haozhu233.github.io/kableExtra/): extends `kable` to allow piping for HTML and LaTeX
#' 
#' - [gt](https://gt.rstudio.com/): from tibble/data.frame to nice looking tables for HTML, LaTeX, and RTF
#' 
#' - [gtsummary](https://www.danieldsjoberg.com/gtsummary/): tbl_svysummary creates tables of summary statistics from survey objects
#' 
#' - [flextable](https://davidgohel.github.io/flextable/index.html): tables for HTML, PDF, Word, and Powerpoint
#' 
#' - [huxtable](https://hughjonesd.github.io/huxtable/): tables for LaTeX and HTML
#' 
#' ---
#' # Other useful packages
#' 
#' - [ggsurvey](https://github.com/balexanderstats/ggsurvey): plotting data from surveys
#' 
#' - [naniar](https://naniar.njtierney.com/): visualize missing data and see missing patterns
#' 
#' - [likert](https://github.com/jbryer/likert): analyze and visualize Likert type items
#' 
#' - and more [CRAN Task View: Official Statistics & Survey Statistics](https://cran.r-project.org/web/views/OfficialStatistics.html)
#' 
#' ---
#' class: inverse center middle
#' # Closing
#' 
#' ---
#' # General questions
#' 
#' - Open floor for questions and discussion
#' 
#' ---
#' ## Thank You!
#' 
#' ### We hope you learned a lot in this session!
#' 
#' Please let us know if you have any feedback on this workshop. All feedback is welcome!
#' 
#' - You will be receiving a follow-up survey to share feedback about course
#' 
#' 
#' ---
#' ## Session info - platform
#' 
## ----si, echo=FALSE-------------------------------------------------------------------------------------------------------------------------
library(xaringan)
library(knitr)
library(tidycensus)
j <- devtools::session_info(pkgs="attached")
print(j$platform)

#' 
#' ---
#' ## Session info - packages
#' 
## ----sipack1, echo=FALSE--------------------------------------------------------------------------------------------------------------------
print(j$packages)

