#' ---
#' title: "Continous Data Analysis Exercise Solutions"
#' output:
#'   html_document:
#'     df_print: paged
#' ---
#' 
#' # Set-up
## -------------------------------------------------------------------------------------------------------------------------------
library(tidyverse) # for tidyverse
library(here) # for file paths
library(survey) # for survey analysis
library(srvyr) # for tidy survey analysis

recs <- read_rds(here("Data", "recs.rds"))

recs_des <- recs %>%
   as_survey_rep(weights=NWEIGHT,
                 repweights=starts_with("BRRWT"),
                 type="Fay",
                 rho=0.5,
                 mse=TRUE)

#' 
#' # Part 1
#' 
#' 1. Find the average square footage of housing units (TOTSQFT_EN) with a 90% confidence interval.
#' 
## ----ex1_1----------------------------------------------------------------------------------------------------------------------
avg_sqci<-recs_des %>%
   summarize(
      SF_HU=survey_mean(TOTSQFT_EN,
                          vartype = "ci",
                          level = 0.9)
   )

#' 
#' On average US households have `r formatC(pull(avg_sqci, SF_HU), format="d", big.mark=",")` square feet, with a 90% CI of (`r formatC(pull(avg_sqci, SF_HU_low), format="d", big.mark=",")` sq ft, `r formatC(pull(avg_sqci, SF_HU_upp), format="d", big.mark=",")` sq ft).
#' 
#' 
#' 2. Estimate the ratio of cooled square footage to total square footage (TOTCSQFT) to the total square footage of housing units (TOTSQFT_EN) with its standard error.
#' 
## ----ex1_2----------------------------------------------------------------------------------------------------------------------
cool_totratio<-recs_des %>%
   summarize(
      PropCooled=survey_ratio(
         numerator = TOTCSQFT,
         denominator = TOTSQFT_EN,
         vartype = "se")
   )

#' 
#' On average US households have a ratio of `r round(pull(cool_totratio, PropCooled), 2)` square feet cooled per total square feet.
#' 
#' 
#' 3. Estimate the median temperature housing units are set to during the night in the winter (WinterTempNight) using the `survey_median` function.
#' 
## ----ex1_3----------------------------------------------------------------------------------------------------------------------
med_wintertemp<-recs_des %>%
   summarize(
      temp_winter=survey_median(WinterTempNight,
                     vartype = "se",
                     na.rm = TRUE)
   )

#' 
#' The median temperature housing units are set to during the night in the winter is `r round(pull(med_wintertemp, temp_winter), 2)` degrees Fahrenheit.
#' 
#' 
#' 4. Estimate the median temperature housing units are set to during the night in the winter (WinterTempNight) using the `survey_quantile` function.
#' 
## ----ex1_4----------------------------------------------------------------------------------------------------------------------
recs_des %>%
   summarize(
      WinterNightTemp=survey_quantile(WinterTempNight,
                            quantiles = 0.5,
                            vartype = "se",
                            na.rm = TRUE)
   )

#' 
#' The 50th percentile (median) temperature housing units are set to during the night in the winter is `r round(pull(med_wintertemp, temp_winter), 2)` degrees Fahrenheit.
#' 
#' 
#' # Part 2
#' 
#' 1. Estimate the total average energy cost (TOTALDOL) by region, division, and urbanicity.
#' 
## ----ex2_1----------------------------------------------------------------------------------------------------------------------
# option 1
recs_des %>%
   group_by(Region, Division, Urbanicity) %>%
   cascade(
      EnergyCost=survey_mean(TOTALDOL)
   )

# option 2
# one way
recs_des %>%
   group_by(Region, Division, Urbanicity) %>%
   summarize(
      EnergyCost=survey_mean(TOTALDOL)
   )

#' 
#' 2. What is the median electric cost (DOLLAREL) for housing units in the South Region? What is the 95% confidence interval?
#' 
## ----ex2_2----------------------------------------------------------------------------------------------------------------------
med_billsouth<-recs_des %>%
   filter(Region=="South") %>%
   summarize(
      MedElBill=survey_median(DOLLAREL,
                              vartype="ci")
   )

#' 
#' The median electric cost for housing units in the South is \$`r formatC(pull(med_billsouth, MedElBill), format="d", big.mark=",")` (\$`r formatC(pull(med_billsouth, MedElBill_low), format="d", big.mark=",")`, \$`r formatC(pull(med_billsouth, MedElBill_upp), format="d", big.mark=",")`).
#' 
#' 
#' 3. Test whether daytime winter and daytime summer temperatures of homes are set the same.
#' 
## ----ex2_3----------------------------------------------------------------------------------------------------------------------
daytemp_ttest<-recs_des %>%
   svyttest(design=.,
            formula = I(WinterTempDay-SummerTempDay)~0,
            na.rm = TRUE)

#' 
#' On average housing units have set the temperature lower in the winter than the summer,  p-value=`r pluck(daytemp_ttest, "p.value") %>% round(5)`.
#' 
#' 
#' 4. Test whether average electric bill (DOLLAREL) varies by region (Region).
#' 
## ----ex2_4----------------------------------------------------------------------------------------------------------------------
m1 <- recs_des %>%
   svyglm(design=.,
          formula=DOLLAREL~Region,
          na.action=na.omit)
summary(m1)

#' 
#' Yes, there is evidence that the average electric bill varies by region. 
#' 
#' 
#' 5. Fit a regression between the cooled square footage of a housing unit (TOTCSQFT) and the total amount spent on energy (TOTALDOL).
#' 
## ----ex2_5----------------------------------------------------------------------------------------------------------------------
m2 <- recs_des %>%
   svyglm(design=.,
          formula=TOTALDOL~TOTCSQFT,
          na.action=na.omit)
summary(m2)

#' 
#' For each additional cooled square foot, the total energy cost increases by \$`r round(pluck(m2$coefficients,"TOTCSQFT"),2)`.
