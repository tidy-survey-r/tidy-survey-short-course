RECS 2015 Codebook
================

-   [Weighting variables](#weighting-variables)
    -   [DOEID](#doeid)
    -   [NWEIGHT](#nweight)
    -   [BRRWT](#brrwt)
-   [Categorical](#categorical)
    -   [Region](#region)
    -   [Division](#division)
    -   [MSAStatus](#msastatus)
    -   [Urbanicity](#urbanicity)
    -   [HousingUnitType](#housingunittype)
    -   [YearMade](#yearmade)
    -   [YearMade](#yearmade-1)
    -   [HeatingBehavior](#heatingbehavior)
    -   [ACUsed](#acused)
    -   [ACBehavior](#acbehavior)
    -   [ClimateRegion_BA](#climateregion_ba)
    -   [ClimateRegion_IECC](#climateregion_iecc)
-   [Continuous](#continuous)
    -   [WinterTempDay](#wintertempday)
    -   [WinterTempAway](#wintertempaway)
    -   [WinterTempNight](#wintertempnight)
    -   [SummerTempDay](#summertempday)
    -   [SummerTempAway](#summertempaway)
    -   [SummerTempNight](#summertempnight)
    -   [TOTCSQFT](#totcsqft)
    -   [TOTHSQFT](#tothsqft)
    -   [TOTSQFT_EN](#totsqft_en)
    -   [TOTUCSQFT](#totucsqft)
    -   [TOTUSQFT](#totusqft)
    -   [CDD30YR](#cdd30yr)
    -   [CDD65](#cdd65)
    -   [CDD80](#cdd80)
    -   [HDD30YR](#hdd30yr)
    -   [HDD65](#hdd65)
    -   [HDD50](#hdd50)
    -   [GNDHDD65](#gndhdd65)
    -   [BTUEL](#btuel)
    -   [DOLLAREL](#dollarel)
    -   [BTUNG](#btung)
    -   [DOLLARNG](#dollarng)
    -   [BTULP](#btulp)
    -   [DOLLARLP](#dollarlp)
    -   [BTUFO](#btufo)
    -   [DOLLARFO](#dollarfo)
    -   [TOTALBTU](#totalbtu)
    -   [TOTALDOL](#totaldol)
    -   [BTUWOOD](#btuwood)
    -   [BTUPELLET](#btupellet)

The full codebook with the original variables is available at
<a href="https://www.eia.gov/consumption/residential/data/2015/index.php?view=microdata" target = "_blank">eia.gov</a>.

## Weighting variables

### DOEID

Unique identifier for each respondent

### NWEIGHT

Final sample weight

### BRRWT

Replicate weights

## Categorical

### Region

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Region
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Northeast
</td>
<td style="text-align:right;">
794
</td>
<td style="text-align:right;">
0.140
</td>
</tr>
<tr>
<td style="text-align:left;">
Midwest
</td>
<td style="text-align:right;">
1327
</td>
<td style="text-align:right;">
0.233
</td>
</tr>
<tr>
<td style="text-align:left;">
South
</td>
<td style="text-align:right;">
2010
</td>
<td style="text-align:right;">
0.353
</td>
</tr>
<tr>
<td style="text-align:left;">
West
</td>
<td style="text-align:right;">
1555
</td>
<td style="text-align:right;">
0.273
</td>
</tr>
</tbody>
</table>

Variables used: REGIONC

### Division

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Division
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
New England
</td>
<td style="text-align:right;">
253
</td>
<td style="text-align:right;">
0.044
</td>
</tr>
<tr>
<td style="text-align:left;">
Middle Atlantic
</td>
<td style="text-align:right;">
541
</td>
<td style="text-align:right;">
0.095
</td>
</tr>
<tr>
<td style="text-align:left;">
East North Central
</td>
<td style="text-align:right;">
836
</td>
<td style="text-align:right;">
0.147
</td>
</tr>
<tr>
<td style="text-align:left;">
West North Central
</td>
<td style="text-align:right;">
491
</td>
<td style="text-align:right;">
0.086
</td>
</tr>
<tr>
<td style="text-align:left;">
South Atlantic
</td>
<td style="text-align:right;">
1058
</td>
<td style="text-align:right;">
0.186
</td>
</tr>
<tr>
<td style="text-align:left;">
East South Central
</td>
<td style="text-align:right;">
372
</td>
<td style="text-align:right;">
0.065
</td>
</tr>
<tr>
<td style="text-align:left;">
West South Central
</td>
<td style="text-align:right;">
580
</td>
<td style="text-align:right;">
0.102
</td>
</tr>
<tr>
<td style="text-align:left;">
Mountain North
</td>
<td style="text-align:right;">
228
</td>
<td style="text-align:right;">
0.040
</td>
</tr>
<tr>
<td style="text-align:left;">
Mountain South
</td>
<td style="text-align:right;">
242
</td>
<td style="text-align:right;">
0.043
</td>
</tr>
<tr>
<td style="text-align:left;">
Pacific
</td>
<td style="text-align:right;">
1085
</td>
<td style="text-align:right;">
0.191
</td>
</tr>
</tbody>
</table>

Variables used: DIVISION

### MSAStatus

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
MSAStatus
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Metropolitan Statistical Area
</td>
<td style="text-align:right;">
4745
</td>
<td style="text-align:right;">
0.835
</td>
</tr>
<tr>
<td style="text-align:left;">
Micropolitan Statistical Area
</td>
<td style="text-align:right;">
584
</td>
<td style="text-align:right;">
0.103
</td>
</tr>
<tr>
<td style="text-align:left;">
None
</td>
<td style="text-align:right;">
357
</td>
<td style="text-align:right;">
0.063
</td>
</tr>
</tbody>
</table>

Variables used: METROMICRO

### Urbanicity

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Urbanicity
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Urban Area
</td>
<td style="text-align:right;">
3928
</td>
<td style="text-align:right;">
0.691
</td>
</tr>
<tr>
<td style="text-align:left;">
Urban Cluster
</td>
<td style="text-align:right;">
598
</td>
<td style="text-align:right;">
0.105
</td>
</tr>
<tr>
<td style="text-align:left;">
Rural
</td>
<td style="text-align:right;">
1160
</td>
<td style="text-align:right;">
0.204
</td>
</tr>
</tbody>
</table>

Variables used: UATYP10

### HousingUnitType

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
HousingUnitType
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Mobile home
</td>
<td style="text-align:right;">
286
</td>
<td style="text-align:right;">
0.050
</td>
</tr>
<tr>
<td style="text-align:left;">
Single-family detached
</td>
<td style="text-align:right;">
3752
</td>
<td style="text-align:right;">
0.660
</td>
</tr>
<tr>
<td style="text-align:left;">
Single-family attached
</td>
<td style="text-align:right;">
479
</td>
<td style="text-align:right;">
0.084
</td>
</tr>
<tr>
<td style="text-align:left;">
Apartment: 2-4 Units
</td>
<td style="text-align:right;">
311
</td>
<td style="text-align:right;">
0.055
</td>
</tr>
<tr>
<td style="text-align:left;">
Apartment: 5 or more units
</td>
<td style="text-align:right;">
858
</td>
<td style="text-align:right;">
0.151
</td>
</tr>
</tbody>
</table>

Variables used: TYPEHUQ

### YearMade

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
YearMade
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Before 1950
</td>
<td style="text-align:right;">
858
</td>
<td style="text-align:right;">
0.151
</td>
</tr>
<tr>
<td style="text-align:left;">
1950-1959
</td>
<td style="text-align:right;">
544
</td>
<td style="text-align:right;">
0.096
</td>
</tr>
<tr>
<td style="text-align:left;">
1960-1969
</td>
<td style="text-align:right;">
565
</td>
<td style="text-align:right;">
0.099
</td>
</tr>
<tr>
<td style="text-align:left;">
1970-1979
</td>
<td style="text-align:right;">
928
</td>
<td style="text-align:right;">
0.163
</td>
</tr>
<tr>
<td style="text-align:left;">
1980-1989
</td>
<td style="text-align:right;">
874
</td>
<td style="text-align:right;">
0.154
</td>
</tr>
<tr>
<td style="text-align:left;">
1990-1999
</td>
<td style="text-align:right;">
786
</td>
<td style="text-align:right;">
0.138
</td>
</tr>
<tr>
<td style="text-align:left;">
2000-2009
</td>
<td style="text-align:right;">
901
</td>
<td style="text-align:right;">
0.158
</td>
</tr>
<tr>
<td style="text-align:left;">
2010-2015
</td>
<td style="text-align:right;">
230
</td>
<td style="text-align:right;">
0.040
</td>
</tr>
</tbody>
</table>

Variables used: YEARMADERANGE

### YearMade

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
SpaceHeatingUsed
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:right;">
258
</td>
<td style="text-align:right;">
0.045
</td>
</tr>
<tr>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
5428
</td>
<td style="text-align:right;">
0.955
</td>
</tr>
</tbody>
</table>

Variables used: HEATHOME

### HeatingBehavior

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
HeatingBehavior
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Set one temp and leave it
</td>
<td style="text-align:right;">
2156
</td>
<td style="text-align:right;">
0.379
</td>
</tr>
<tr>
<td style="text-align:left;">
Manually adjust at night/no one home
</td>
<td style="text-align:right;">
1414
</td>
<td style="text-align:right;">
0.249
</td>
</tr>
<tr>
<td style="text-align:left;">
Program thermostat to change at certain times
</td>
<td style="text-align:right;">
972
</td>
<td style="text-align:right;">
0.171
</td>
</tr>
<tr>
<td style="text-align:left;">
Turn on or off as needed
</td>
<td style="text-align:right;">
761
</td>
<td style="text-align:right;">
0.134
</td>
</tr>
<tr>
<td style="text-align:left;">
No control
</td>
<td style="text-align:right;">
114
</td>
<td style="text-align:right;">
0.020
</td>
</tr>
<tr>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
11
</td>
<td style="text-align:right;">
0.002
</td>
</tr>
<tr>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
258
</td>
<td style="text-align:right;">
0.045
</td>
</tr>
</tbody>
</table>

Variables used: EQUIPMUSE

### ACUsed

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
ACUsed
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:right;">
737
</td>
<td style="text-align:right;">
0.13
</td>
</tr>
<tr>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
4949
</td>
<td style="text-align:right;">
0.87
</td>
</tr>
</tbody>
</table>

Variables used: AIRCOND

### ACBehavior

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
ACBehavior
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Set one temp and leave it
</td>
<td style="text-align:right;">
1661
</td>
<td style="text-align:right;">
0.292
</td>
</tr>
<tr>
<td style="text-align:left;">
Manually adjust at night/no one home
</td>
<td style="text-align:right;">
984
</td>
<td style="text-align:right;">
0.173
</td>
</tr>
<tr>
<td style="text-align:left;">
Program thermostat to change at certain times
</td>
<td style="text-align:right;">
727
</td>
<td style="text-align:right;">
0.128
</td>
</tr>
<tr>
<td style="text-align:left;">
Turn on or off as needed
</td>
<td style="text-align:right;">
438
</td>
<td style="text-align:right;">
0.077
</td>
</tr>
<tr>
<td style="text-align:left;">
No control
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1874
</td>
<td style="text-align:right;">
0.330
</td>
</tr>
</tbody>
</table>

Variables used: USECENAC

### ClimateRegion_BA

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
ClimateRegion_BA
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Hot-Dry/Mixed-Dry
</td>
<td style="text-align:right;">
750
</td>
<td style="text-align:right;">
0.132
</td>
</tr>
<tr>
<td style="text-align:left;">
Hot-Humid
</td>
<td style="text-align:right;">
1036
</td>
<td style="text-align:right;">
0.182
</td>
</tr>
<tr>
<td style="text-align:left;">
Mixed-Humid
</td>
<td style="text-align:right;">
1468
</td>
<td style="text-align:right;">
0.258
</td>
</tr>
<tr>
<td style="text-align:left;">
Cold/Very Cold
</td>
<td style="text-align:right;">
2008
</td>
<td style="text-align:right;">
0.353
</td>
</tr>
<tr>
<td style="text-align:left;">
Marine
</td>
<td style="text-align:right;">
424
</td>
<td style="text-align:right;">
0.075
</td>
</tr>
</tbody>
</table>

Variables used: CLIMATE_REGION_PUB

### ClimateRegion_IECC

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
ClimateRegion_IECC
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
Unweighted Freq
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
1A-2A
</td>
<td style="text-align:right;">
846
</td>
<td style="text-align:right;">
0.149
</td>
</tr>
<tr>
<td style="text-align:left;">
2B
</td>
<td style="text-align:right;">
106
</td>
<td style="text-align:right;">
0.019
</td>
</tr>
<tr>
<td style="text-align:left;">
3A
</td>
<td style="text-align:right;">
637
</td>
<td style="text-align:right;">
0.112
</td>
</tr>
<tr>
<td style="text-align:left;">
3B-4B
</td>
<td style="text-align:right;">
644
</td>
<td style="text-align:right;">
0.113
</td>
</tr>
<tr>
<td style="text-align:left;">
3C
</td>
<td style="text-align:right;">
209
</td>
<td style="text-align:right;">
0.037
</td>
</tr>
<tr>
<td style="text-align:left;">
4A
</td>
<td style="text-align:right;">
1021
</td>
<td style="text-align:right;">
0.180
</td>
</tr>
<tr>
<td style="text-align:left;">
4C
</td>
<td style="text-align:right;">
215
</td>
<td style="text-align:right;">
0.038
</td>
</tr>
<tr>
<td style="text-align:left;">
5A
</td>
<td style="text-align:right;">
1240
</td>
<td style="text-align:right;">
0.218
</td>
</tr>
<tr>
<td style="text-align:left;">
5B-5C
</td>
<td style="text-align:right;">
332
</td>
<td style="text-align:right;">
0.058
</td>
</tr>
<tr>
<td style="text-align:left;">
6A-6B
</td>
<td style="text-align:right;">
376
</td>
<td style="text-align:right;">
0.066
</td>
</tr>
<tr>
<td style="text-align:left;">
7A-7B-7AK-8AK
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
0.011
</td>
</tr>
</tbody>
</table>

Variables used: IECC_CLIMATE_PUB

## Continuous

### WinterTempDay

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
70
</td>
<td style="text-align:right;">
90
</td>
</tr>
</tbody>
</table>

Variables used: TEMPHOME

### WinterTempAway

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
68
</td>
<td style="text-align:right;">
90
</td>
</tr>
</tbody>
</table>

Variables used: TEMPGONE

### WinterTempNight

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
68
</td>
<td style="text-align:right;">
90
</td>
</tr>
</tbody>
</table>

Variables used: TEMPNITE

### SummerTempDay

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:right;">
90
</td>
</tr>
</tbody>
</table>

Variables used: TEMPHOMEAC

### SummerTempAway

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
75
</td>
<td style="text-align:right;">
90
</td>
</tr>
</tbody>
</table>

Variables used: TEMPGONEAC

### SummerTempNight

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:right;">
90
</td>
</tr>
</tbody>
</table>

Variables used: TEMPNITEAC

### TOTCSQFT

Total cooled square footage

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1218.5
</td>
<td style="text-align:right;">
8066
</td>
</tr>
</tbody>
</table>

### TOTHSQFT

Total heated square footage

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1559
</td>
<td style="text-align:right;">
8066
</td>
</tr>
</tbody>
</table>

### TOTSQFT_EN

Total square footage (used for publication)

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
221
</td>
<td style="text-align:right;">
1773.5
</td>
<td style="text-align:right;">
8501
</td>
</tr>
</tbody>
</table>

### TOTUCSQFT

Total uncooled square footage

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
400
</td>
<td style="text-align:right;">
7986
</td>
</tr>
</tbody>
</table>

### TOTUSQFT

Total unheated square footage

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
250
</td>
<td style="text-align:right;">
6660
</td>
</tr>
</tbody>
</table>

### CDD30YR

Cooling degree days, 30-year average 1981-2010, base temperature 65F

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1150.5
</td>
<td style="text-align:right;">
5792
</td>
</tr>
</tbody>
</table>

### CDD65

Cooling degree days in 2015, base temperature 65F

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1378
</td>
<td style="text-align:right;">
6607
</td>
</tr>
</tbody>
</table>

### CDD80

Cooling degree days in 2015, base temperature 80F (used for garage
cooling load estimation only)

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
2297
</td>
</tr>
</tbody>
</table>

### HDD30YR

Heating degree days, 30-year average 1981-2010, base temperature 65F

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
4353
</td>
<td style="text-align:right;">
12184
</td>
</tr>
</tbody>
</table>

### HDD65

Heating degree days in 2015, base temperature 65F

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3877.5
</td>
<td style="text-align:right;">
9843
</td>
</tr>
</tbody>
</table>

### HDD50

Heating degree days in 2015, base temperature 50F (used for garage
heating load estimation only)

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1260
</td>
<td style="text-align:right;">
4956
</td>
</tr>
</tbody>
</table>

### GNDHDD65

Heating degree days of ground temperature in 2015, base temperature 65F

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3704.305
</td>
<td style="text-align:right;">
11850.55
</td>
</tr>
</tbody>
</table>

### BTUEL

Total site electricity usage, in thousand Btu, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
201.574
</td>
<td style="text-align:right;">
32582.39
</td>
<td style="text-align:right;">
215695.7
</td>
</tr>
</tbody>
</table>

### DOLLAREL

Total electricity cost, in dollars, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
18.72
</td>
<td style="text-align:right;">
1253.015
</td>
<td style="text-align:right;">
8121.56
</td>
</tr>
</tbody>
</table>

### BTUNG

Total natural gas usage, in thousand Btu, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
17961.36
</td>
<td style="text-align:right;">
306594.2
</td>
</tr>
</tbody>
</table>

### DOLLARNG

Total natural gas cost, in dollars, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
231.8
</td>
<td style="text-align:right;">
2789.84
</td>
</tr>
</tbody>
</table>

### BTULP

Total propane usage, in thousand Btu, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
220435.3
</td>
</tr>
</tbody>
</table>

### DOLLARLP

Total cost of propane, in dollars, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
5121.27
</td>
</tr>
</tbody>
</table>

### BTUFO

Total fuel oil/kerosene usage, in thousand Btu, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
273608.2
</td>
</tr>
</tbody>
</table>

### DOLLARFO

Total cost of fuel oil/kerosene, in dollars, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
4700.03
</td>
</tr>
</tbody>
</table>

### TOTALBTU

Total usage, in thousand Btu, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
201.574
</td>
<td style="text-align:right;">
68663.35
</td>
<td style="text-align:right;">
490187.4
</td>
</tr>
</tbody>
</table>

### TOTALDOL

Total usage, in thousand Btu, 2015

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
60.46
</td>
<td style="text-align:right;">
1724.595
</td>
<td style="text-align:right;">
10135.99
</td>
</tr>
</tbody>
</table>

### BTUWOOD

Total cordwood usage, in thousand Btu, 2015 (Wood consumption is not
included in TOTALBTU or TOTALDOL)

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
295475.8
</td>
</tr>
</tbody>
</table>

### BTUPELLET

Total wood pellet usage, in thousand Btu, 2015 (Wood consumption is not
included in TOTALBTU or TOTALDOL)

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Minimum
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Maximum
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
115500
</td>
</tr>
</tbody>
</table>
