#' ---
#' title: "Design objects and derived variables exercise solutions"
#' output:
#'   html_document:
#'     df_print: paged
#' ---
#' 
#' # Course set-up
#' 
#' First, let's make sure you have everything you need for the course. Run the following library statements. If something is not installed, install it.
#' 
## ----setup---------------------------------------------------------------
# install.packages("tidyverse")
# remotes::install_github("bschneidr/r-forge-survey-mirror")
# install.packages("srvyr")
# install.packages("here")
# install.packages("palmerpenguins")
# install.packages("remotes")

library(tidyverse) # for tidyverse
library(here) # for file paths
library(srvyr)



#' 
#' # Part 1 - Design Objects
#' 
#' In these exercises, you will be given a study and assume you have the data. How would you create the design object?
#' 
#' 1.  California Health Interview Survey - 2019-2020
#'     -   Note that you can do this with design variables aka Taylor's series or replicate weights.
#'     -   Useful links:
#'         -   <https://healthpolicy.ucla.edu/chis/design/Pages/methodology.aspx>
#'         -   <https://healthpolicy.ucla.edu/chis/analyze/Pages/sample-code.aspx>
#'         -   <https://healthpolicy.ucla.edu/chis/analyze/Pages/weighting.aspx>
#'     -   Assume you have the Public Use File for **adults** already read into R and the dataframe is called `chis19_adult`.
#' 
## ----chis, eval=FALSE----------------------------------------------------
## 
## chis19_adult <- haven::read_sas(here::here("RawData", "adult_2019_sas", "adult.sas7bdat"))
## 
## rep_des <- chis19_adult %>%
##    as_survey_rep(weights=RAKEDW0, repweights=stringr::str_c("RAKEDW", 1:80),
##                  type="JKn", rscales=1)
## 
## tsl_des <- chis19_adult %>%
##    as_survey_design(weights=RAKEDW0, strata=TSVARSTR, ids=1)
## 
## # or
## tsl_des <- chis19_adult %>%
##    as_survey_design(weights=RAKEDW0, strata=TSVARSTR, ids=0)
## 
## 

#' 
#' 2.  National Survey on Drug Use and Health - 2019
#'     -   Useful links:
#'         -   <https://www.datafiles.samhsa.gov/dataset/national-survey-drug-use-and-health-2019-nsduh-2019-ds0001>
#'         -   <https://www.datafiles.samhsa.gov/dataset/national-survey-drug-use-and-health-2019-nsduh-2019-ds0001>
#'     -   Assume you have the Public Use File for already read into R and the dataframe is called `nsduh19`.
#' 
## ----nsduh, eval=FALSE---------------------------------------------------
## nsduh19 <- haven::read_sav(here::here("RawData", "NSDUH_2019", "NSDUH_2019.SAV"))
## nsduh_des <- nsduh19 %>%
##    as_survey_design(weights=ANALWT_C, strata=VESTR, ids=VEREP, nest=TRUE)
## 

#' 
#' 
#' # Part 2 - Derived variables
#' 
#' Before exercises, read the data in
## ----datin, cache=TRUE---------------------------------------------------
anes <- read_rds(here("Data", "anes_2020.rds"))
recs_in <- read_csv(here("RawData", "RECS_2015", "recs2015_public_v4.csv"))

#' 
#' In these exercises, you will be given specifications for a derived variable. Create the variable and check your work. Useful resources:
#' 
#' - [ANES Codebook Raw Variables](https://electionstudies.org/wp-content/uploads/2022/02/anes_timeseries_2020_userguidecodebook_20220210.pdf)
#' - [ANES Codebook Exiting Derived Variables](https://github.com/tidy-survey-r/tidy-survey-short-course/blob/main/Codebook/ANES-2020-Derived-Variable-Codebook.md)
#' - [RECS Codebook Raw Variables](https://www.eia.gov/consumption/residential/data/2015/xls/codebook_publicv4.xlsx) - Note this will download a spreadsheet
#' 
#' 1. ANES: Create a 5-level income variable as described below. For cases where the income is refused or the interview was a breakoff, this derived variable should be `NA`. The variable should be created such that "Under $25,000" comes first and so on. Hint: Use the variable `V201617x`
#' 
#'    - Under $25,000
#'    - $25,000-49,999
#'    - $50,000-74,999
#'    - $75,000-99,999
#'    - $100,000 or more
#'    
## ----income5-------------------------------------------------------------
anes_income <- anes %>%
   mutate(
      Income5=factor(case_when(
         V201617x %in% c(1:4)~"Under $25,000",
         V201617x %in% c(5:9)~"$25,000-49,999",
         V201617x %in% c(10:13)~"$50,000-74,999",
         V201617x %in% c(14:16)~"$75,000-99,999",
         V201617x %in% c(17:22)~"$100,000 or more",
         TRUE ~ NA_character_
      ), levels=c("Under $25,000", "$25,000-49,999", "$50,000-74,999", "$75,000-99,999", "$100,000 or more"))
   )

anes_income %>%
   count(Income5, V201617x)

#'    
#' 2. ANES: Create a 5-level age variable as described below. For the cases where age is refused, this derived variable should be `NA`. Hint: use variable `V201507x`
#' 
#'    - 18-24
#'    - 25-44
#'    - 45-64
#'    - 65-74
#'    - 75 or older
#'    
#'    
## ----age5----------------------------------------------------------------
anes_age <- anes %>%
   mutate(
      AgeGroup5=factor(case_when(
         V201507x %in% c(18:24)~"18-24",
         V201507x %in% c(25:44)~"25-44",
         V201507x %in% c(45:64)~"45-64",
         V201507x %in% c(65:74)~"65-74",
         V201507x %in% c(75:90)~"75 or older",
         TRUE ~ NA_character_),
      levels=c('18-24', '25-44', '45-64', '65-74', '75 or older' ))
   )

anes_age %>%
   group_by(AgeGroup5) %>%
   summarise(
      minV=min(V201507x, na.rm = TRUE),
      maxV=max(V201507x, na.rm = TRUE),
      ncat=n(),
      nNA_v=sum(is.na(V201507x))
   )

#' 
#' 3. RECS: Create a logical variable indicating whether there was any household energy insecurity. Household energy insecurity is defined as households that have any of the following occur at least once:
#' 
#' - Reducing or forgoing basic necesseties to pay energy costs (SCALEB)
#' - Leaving home at unhealthy temperature (SCALEG)
#' - Receiving disconnect or delivery stop notice (SCALEE)
#' - Unable to use heating equipment (NOHEATBROKE, NOHEATEL, NOHEATNG, NOHEATBULK)
#' - Unable to use cooling equipment (NOACBROKE, NOACEL)
#' 
#' The relevant variables that should be used are included in parentheses.
#' 
## ----energyinsec---------------------------------------------------------
recs_insecur <- recs_in %>%
   select(starts_with("SCALE"), starts_with("NOHEAT"), starts_with("NOAC"), NWEIGHT) %>%
   mutate(
      EnergyInsec=SCALEB %in% c(1:3) | SCALEG %in% c(1:3) | SCALEE %in% c(1:3) |
         NOHEATBROKE==1 | NOHEATEL==1|NOHEATNG==1|NOHEATBULK==1|
         NOACBROKE==1|NOACEL==1
   )

recs_insecur %>%
   count(EnergyInsec, SCALEB, SCALEG, SCALEE, NOHEATBROKE, NOHEATEL, NOHEATNG,
         NOHEATBULK, NOACBROKE, NOACEL)


#' 
