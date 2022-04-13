#' ---
#' title: "Warm-up Exercise Solutions"
#' output:
#'   html_document:
#'     df_print: paged
#' ---
#' 
#' # Course set-up
#' First, let's make sure you have everything you need for the course. Run the following library statements. If something is not installed, install it.
#' 
## ----setup----------------------------------------------------------------------------------------------------------------------
# install.packages("tidyverse")
# remotes::install_github("bschneidr/r-forge-survey-mirror")
# install.packages("srvyr")
# install.packages("here")
# install.packages("palmerpenguins")
# install.packages("remotes")

library(tidyverse) # for tidyverse
library(here) # for file paths
library(palmerpenguins)



#' 
#' # Warm-up exercises for Day 1
#' 
## ----datapeek-------------------------------------------------------------------------------------------------------------------
glimpse(penguins)

#' 
#' How many penguins of each species are there? Hint: use `count`
#' 
## ----speciestab-----------------------------------------------------------------------------------------------------------------
penguins %>%
   count(species)

#' 
#' How many penguins of each species and sex are there? Hint: use `count`
#' 
## ----speciessextab--------------------------------------------------------------------------------------------------------------
penguins %>%
   count(species, sex)

#' 
#' What is the proportion of each species of penguins? Hint: use `count` then `mutate` 
#' 
## ----speciestabp----------------------------------------------------------------------------------------------------------------
penguins %>%
   count(species) %>%
   mutate(
      p=n/sum(n)
   )

#' 
#' What is the proportion of each sex of penguins within species? Hint: use `count` then `group_by` and `mutate` 
#' 
## ----speciessextabp-------------------------------------------------------------------------------------------------------------
penguins %>%
   count(species, sex) %>%
   group_by(species) %>%
   mutate(
      p=n/sum(n)
   )


#' 
#' # Warm-up exercises for Day 2
#' 
#' What is the mean body mass in grams of all penguins? Hint: use `summarize` and remove missing data
#' 
## ----peng_meanmass--------------------------------------------------------------------------------------------------------------
penguins %>%
   summarize(
     MeanBodyMass=mean(body_mass_g, 
                       na.rm=TRUE)
     )

#' 
#' What is the mean length of flipper by species? Hint: use `group_by`
#' 
## ----peng_meanflip_species------------------------------------------------------------------------------------------------------
penguins %>%
   group_by(species) %>%
   summarize(
     MeanFlipperLength=mean(flipper_length_mm, 
                            na.rm=TRUE)
     )

#' 
#' What is the mean flipper length by species and sex?
#' 
## ----peng_meanflip_speciessex---------------------------------------------------------------------------------------------------
penguins %>%
   group_by(species,sex) %>%
   summarize(
     MeanFlipperLength=mean(flipper_length_mm, 
                            na.rm=TRUE))

#' 
#' Fit a simple linear regression between body mass and flipper length.
#' 
## ----pengLM---------------------------------------------------------------------------------------------------------------------
#Option 1
mod1 <- lm(body_mass_g ~ flipper_length_mm, data=penguins)
summary(mod1)

#Option 2
mod2 <- glm(body_mass_g ~ flipper_length_mm, data=penguins)
summary(mod2)

#' 
#' 
#' # Session information
#' 
## ----si-------------------------------------------------------------------------------------------------------------------------
devtools::session_info(pkgs="attached")

