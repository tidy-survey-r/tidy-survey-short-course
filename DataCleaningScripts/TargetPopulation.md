Target Population 2020 ANES
================

## Target pop 2020 ANES

From the User Guide: “The target population for the fresh cross-section
was the 231 million non-institutional U.S. citizens aged 18 or older
living in the 50 US states or the District of Columbia.”

-   We will use Current Population Survey (CPS) to find this total from
    November 2020
-   Relevant data dictionary:
    <https://www2.census.gov/programs-surveys/cps/datasets/2020/basic/2020_Basic_CPS_Public_Use_Record_Layout_plus_IO_Code_list.txt>

``` r
library(censusapi)
```

    ## 
    ## Attaching package: 'censusapi'

    ## The following object is masked from 'package:methods':
    ## 
    ##     getFunction

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.1 --

    ## v ggplot2 3.3.5     v purrr   0.3.4
    ## v tibble  3.1.6     v dplyr   1.0.8
    ## v tidyr   1.2.0     v stringr 1.4.0
    ## v readr   2.1.2     v forcats 0.5.1

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
cps_state_in <- getCensus(
   name="cps/basic/nov",
   vintage=2020,
   region="state",
   vars=c("HRHHID", "HRMONTH", "HRYEAR4", "PRTAGE", "PRCITSHP", "PWSSWGT"),
   key = Sys.getenv("CENSUS_API_KEY")
)

cps_state <- cps_state_in %>%
   as_tibble() %>%
   mutate(across(.fns=as.numeric))

# confirm this doesn't include territories
cps_state %>%
   count(state)
```

    ## # A tibble: 51 x 2
    ##    state     n
    ##    <dbl> <int>
    ##  1     1  2406
    ##  2     2  1289
    ##  3     4  1969
    ##  4     5  1988
    ##  5     6  9574
    ##  6     8  1365
    ##  7     9  1157
    ##  8    10  1285
    ##  9    11  1622
    ## 10    12  5055
    ## # ... with 41 more rows

``` r
# confirm this is only November 2020
cps_state %>% 
   count(HRMONTH, HRYEAR4)
```

    ## # A tibble: 1 x 3
    ##   HRMONTH HRYEAR4      n
    ##     <dbl>   <dbl>  <int>
    ## 1      11    2020 112037

``` r
# voting age citizen population

targetpop <- cps_state %>% 
   as_tibble() %>%
   filter(
      PRTAGE>=18,
      PRCITSHP %in% (1:4)
   ) %>%
   pull(PWSSWGT) %>%
   sum()
```

The target population in 2020 is: 231,592,693.

## Target pop 2016 ANES

From the User Guide: “…and the target population for the Internet mode
was 224.1 million U.S. citizens age 18 or older living in the 50 US
states or the District of Columbia”

-   We will use Current Population Survey (CPS) to find this total from
    November 2016

``` r
cps_state_in <- getCensus(
   name="cps/basic/nov",
   vintage=2016,
   region="state",
   vars=c("HRHHID", "HRMONTH", "HRYEAR4", "PRTAGE", "PRCITSHP", "PWSSWGT"),
   key = Sys.getenv("CENSUS_API_KEY")
)

cps_state <- cps_state_in %>%
   as_tibble() %>%
   mutate(across(.fns=as.numeric))

# confirm this doesn't include territories
cps_state %>%
   count(state)
```

    ## # A tibble: 51 x 2
    ##    state     n
    ##    <dbl> <int>
    ##  1     1  2651
    ##  2     2  1720
    ##  3     4  2145
    ##  4     5  2342
    ##  5     6 11200
    ##  6     8  1551
    ##  7     9  1228
    ##  8    10  1508
    ##  9    11  2094
    ## 10    12  5777
    ## # ... with 41 more rows

``` r
# confirm this is only November 2020
cps_state %>% 
   count(HRMONTH, HRYEAR4)
```

    ## # A tibble: 1 x 3
    ##   HRMONTH HRYEAR4      n
    ##     <dbl>   <dbl>  <int>
    ## 1      11    2016 131389

``` r
# voting age citizen population

targetpop <- cps_state %>% 
   as_tibble() %>%
   filter(
      PRTAGE>=18,
      PRCITSHP %in% (1:4)
   ) %>%
   pull(PWSSWGT) %>%
   sum()
```

The target population in 2016 is: 224,059,005.
