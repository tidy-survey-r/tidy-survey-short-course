ANES 2020 Derived Variable Codebook
================

-   [Weighting variables](#weighting-variables)
    -   [V200010b](#v200010b)
    -   [V200010d](#v200010d)
    -   [V200010c](#v200010c)
-   [InterviewMode](#interviewmode)
-   [Age](#age)
-   [Gender](#gender)
-   [RaceEth](#raceeth)
-   [PartyID](#partyid)
-   [Education](#education)
-   [Income](#income)
-   [CampaignInterest](#campaigninterest)
-   [TrustGovernment](#trustgovernment)
-   [TrustPeople](#trustpeople)
-   [VotedPres2016](#votedpres2016)
-   [VotedPres2016_selection](#votedpres2016_selection)
-   [VotedPres2020](#votedpres2020)
-   [VotedPres2020_selection](#votedpres2020_selection)
-   [EarlyVote2020 / VotedPres2020](#earlyvote2020--votedpres2020)

The full codebook with the original variables is available on
<a href="https://electionstudies.org/wp-content/uploads/2022/02/anes_timeseries_2020_userguidecodebook_20220210.pdf" target="_blank">electionstudies.org</a>.

## Weighting variables

### V200010b

Full sample post-election weight.

### V200010d

Full sample variance stratum.

### V200010c

Full sample variance unit.

## InterviewMode

MODE OF INTERVIEW: PRE-ELECTION INTERVIEW

<table class=" lightable-minimal" style='font-family: "Trebuchet MS", verdana, sans-serif; margin-left: auto; margin-right: auto;'>
<thead>
<tr>
<th style="text-align:left;">
V200002
</th>
<th style="text-align:left;">
InterviewMode
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
1
</td>
<td style="text-align:left;">
Video
</td>
<td style="text-align:right;">
274
</td>
<td style="text-align:right;">
0.037
</td>
</tr>
<tr>
<td style="text-align:left;">
2
</td>
<td style="text-align:left;">
Telephone
</td>
<td style="text-align:right;">
115
</td>
<td style="text-align:right;">
0.015
</td>
</tr>
<tr>
<td style="text-align:left;">
3
</td>
<td style="text-align:left;">
Web
</td>
<td style="text-align:right;">
7064
</td>
<td style="text-align:right;">
0.948
</td>
</tr>
<tr>
<td style="text-align:left;">
Total
</td>
<td style="text-align:left;">

-   </td>
    <td style="text-align:right;">
    7453
    </td>
    <td style="text-align:right;">
    1.000
    </td>
    </tr>
    </tbody>
    </table>
    Variables used: V200002

## Age

RESPONDENT AGE

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
AgeGroup
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
18-29
</td>
<td style="text-align:right;">
871
</td>
<td style="text-align:right;">
0.117
</td>
</tr>
<tr>
<td style="text-align:left;">
30-39
</td>
<td style="text-align:right;">
1241
</td>
<td style="text-align:right;">
0.167
</td>
</tr>
<tr>
<td style="text-align:left;">
40-49
</td>
<td style="text-align:right;">
1081
</td>
<td style="text-align:right;">
0.145
</td>
</tr>
<tr>
<td style="text-align:left;">
50-59
</td>
<td style="text-align:right;">
1200
</td>
<td style="text-align:right;">
0.161
</td>
</tr>
<tr>
<td style="text-align:left;">
60-69
</td>
<td style="text-align:right;">
1436
</td>
<td style="text-align:right;">
0.193
</td>
</tr>
<tr>
<td style="text-align:left;">
70 or older
</td>
<td style="text-align:right;">
1330
</td>
<td style="text-align:right;">
0.178
</td>
</tr>
<tr>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
294
</td>
<td style="text-align:right;">
0.039
</td>
</tr>
</tbody>
</table>

Variables used: V201507x

## Gender

PRE: WHAT IS YOUR (R) SEX? \[REVISED\]

What is your sex?

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201600
</th>
<th style="text-align:left;">
Gender
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
0.007
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Male
</td>
<td style="text-align:right;">
3375
</td>
<td style="text-align:right;">
0.453
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
Female
</td>
<td style="text-align:right;">
4027
</td>
<td style="text-align:right;">
0.540
</td>
</tr>
</tbody>
</table>

Variables used: V201600

## RaceEth

PRE: SUMMARY: R SELF-IDENTIFIED RACE/ETHNICITY

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201549x
</th>
<th style="text-align:left;">
RaceEth
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
75
</td>
<td style="text-align:right;">
0.010
</td>
</tr>
<tr>
<td style="text-align:right;">
-8
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
6
</td>
<td style="text-align:right;">
0.001
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
White
</td>
<td style="text-align:right;">
5420
</td>
<td style="text-align:right;">
0.727
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
Black
</td>
<td style="text-align:right;">
650
</td>
<td style="text-align:right;">
0.087
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
Hispanic
</td>
<td style="text-align:right;">
662
</td>
<td style="text-align:right;">
0.089
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
Asian, NH/PI
</td>
<td style="text-align:right;">
248
</td>
<td style="text-align:right;">
0.033
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
AI/AN
</td>
<td style="text-align:right;">
155
</td>
<td style="text-align:right;">
0.021
</td>
</tr>
<tr>
<td style="text-align:right;">
6
</td>
<td style="text-align:left;">
Other/multiple race
</td>
<td style="text-align:right;">
237
</td>
<td style="text-align:right;">
0.032
</td>
</tr>
</tbody>
</table>

Variables used: V201549x

## PartyID

PRE: SUMMARY: PARTY ID

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201231x
</th>
<th style="text-align:left;">
PartyID
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
23
</td>
<td style="text-align:right;">
0.003
</td>
</tr>
<tr>
<td style="text-align:right;">
-8
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Strong democrat
</td>
<td style="text-align:right;">
1796
</td>
<td style="text-align:right;">
0.241
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
Not very strong democrat
</td>
<td style="text-align:right;">
790
</td>
<td style="text-align:right;">
0.106
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
Independent-democrat
</td>
<td style="text-align:right;">
881
</td>
<td style="text-align:right;">
0.118
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
Independent
</td>
<td style="text-align:right;">
876
</td>
<td style="text-align:right;">
0.118
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
Independent-republican
</td>
<td style="text-align:right;">
782
</td>
<td style="text-align:right;">
0.105
</td>
</tr>
<tr>
<td style="text-align:right;">
6
</td>
<td style="text-align:left;">
Not very strong republican
</td>
<td style="text-align:right;">
758
</td>
<td style="text-align:right;">
0.102
</td>
</tr>
<tr>
<td style="text-align:right;">
7
</td>
<td style="text-align:left;">
Strong republican
</td>
<td style="text-align:right;">
1545
</td>
<td style="text-align:right;">
0.207
</td>
</tr>
</tbody>
</table>

Variables used: V201231x

## Education

What is the highest level of school you have completed or the highest
degree you have received?

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201510
</th>
<th style="text-align:left;">
Education
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
25
</td>
<td style="text-align:right;">
0.003
</td>
</tr>
<tr>
<td style="text-align:right;">
-8
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Less than HS
</td>
<td style="text-align:right;">
312
</td>
<td style="text-align:right;">
0.042
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
High school
</td>
<td style="text-align:right;">
1160
</td>
<td style="text-align:right;">
0.156
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
Post HS
</td>
<td style="text-align:right;">
1519
</td>
<td style="text-align:right;">
0.204
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
Post HS
</td>
<td style="text-align:right;">
550
</td>
<td style="text-align:right;">
0.074
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
Post HS
</td>
<td style="text-align:right;">
445
</td>
<td style="text-align:right;">
0.060
</td>
</tr>
<tr>
<td style="text-align:right;">
6
</td>
<td style="text-align:left;">
Bachelor’s
</td>
<td style="text-align:right;">
1877
</td>
<td style="text-align:right;">
0.252
</td>
</tr>
<tr>
<td style="text-align:right;">
7
</td>
<td style="text-align:left;">
Graduate
</td>
<td style="text-align:right;">
1092
</td>
<td style="text-align:right;">
0.147
</td>
</tr>
<tr>
<td style="text-align:right;">
8
</td>
<td style="text-align:left;">
Graduate
</td>
<td style="text-align:right;">
382
</td>
<td style="text-align:right;">
0.051
</td>
</tr>
<tr>
<td style="text-align:right;">
95
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
90
</td>
<td style="text-align:right;">
0.012
</td>
</tr>
</tbody>
</table>

Variables used: V201510

## Income

PRE: SUMMARY: TOTAL (FAMILY) INCOME

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201617x
</th>
<th style="text-align:left;">
Income
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
502
</td>
<td style="text-align:right;">
0.067
</td>
</tr>
<tr>
<td style="text-align:right;">
-5
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
15
</td>
<td style="text-align:right;">
0.002
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Under $9,999
</td>
<td style="text-align:right;">
647
</td>
<td style="text-align:right;">
0.087
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
$10,000-14,999
</td>
<td style="text-align:right;">
244
</td>
<td style="text-align:right;">
0.033
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
$15,000-19,999
</td>
<td style="text-align:right;">
185
</td>
<td style="text-align:right;">
0.025
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
$20,000-24,999
</td>
<td style="text-align:right;">
301
</td>
<td style="text-align:right;">
0.040
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
$25,000-29,999
</td>
<td style="text-align:right;">
228
</td>
<td style="text-align:right;">
0.031
</td>
</tr>
<tr>
<td style="text-align:right;">
6
</td>
<td style="text-align:left;">
$30,000-34,999
</td>
<td style="text-align:right;">
296
</td>
<td style="text-align:right;">
0.040
</td>
</tr>
<tr>
<td style="text-align:right;">
7
</td>
<td style="text-align:left;">
$35,000-39,999
</td>
<td style="text-align:right;">
226
</td>
<td style="text-align:right;">
0.030
</td>
</tr>
<tr>
<td style="text-align:right;">
8
</td>
<td style="text-align:left;">
$40,000-44,999
</td>
<td style="text-align:right;">
286
</td>
<td style="text-align:right;">
0.038
</td>
</tr>
<tr>
<td style="text-align:right;">
9
</td>
<td style="text-align:left;">
$45,000-49,999
</td>
<td style="text-align:right;">
213
</td>
<td style="text-align:right;">
0.029
</td>
</tr>
<tr>
<td style="text-align:right;">
10
</td>
<td style="text-align:left;">
$50,000-59,999
</td>
<td style="text-align:right;">
485
</td>
<td style="text-align:right;">
0.065
</td>
</tr>
<tr>
<td style="text-align:right;">
11
</td>
<td style="text-align:left;">
$60,000-64,999
</td>
<td style="text-align:right;">
294
</td>
<td style="text-align:right;">
0.039
</td>
</tr>
<tr>
<td style="text-align:right;">
12
</td>
<td style="text-align:left;">
$65,000-69,999
</td>
<td style="text-align:right;">
168
</td>
<td style="text-align:right;">
0.023
</td>
</tr>
<tr>
<td style="text-align:right;">
13
</td>
<td style="text-align:left;">
$70,000-74,999
</td>
<td style="text-align:right;">
243
</td>
<td style="text-align:right;">
0.033
</td>
</tr>
<tr>
<td style="text-align:right;">
14
</td>
<td style="text-align:left;">
$75,000-79,999
</td>
<td style="text-align:right;">
215
</td>
<td style="text-align:right;">
0.029
</td>
</tr>
<tr>
<td style="text-align:right;">
15
</td>
<td style="text-align:left;">
$80,000-89,999
</td>
<td style="text-align:right;">
383
</td>
<td style="text-align:right;">
0.051
</td>
</tr>
<tr>
<td style="text-align:right;">
16
</td>
<td style="text-align:left;">
$90,000-99,999
</td>
<td style="text-align:right;">
291
</td>
<td style="text-align:right;">
0.039
</td>
</tr>
<tr>
<td style="text-align:right;">
17
</td>
<td style="text-align:left;">
$100,000-109,999
</td>
<td style="text-align:right;">
451
</td>
<td style="text-align:right;">
0.061
</td>
</tr>
<tr>
<td style="text-align:right;">
18
</td>
<td style="text-align:left;">
$110,000-124,999
</td>
<td style="text-align:right;">
312
</td>
<td style="text-align:right;">
0.042
</td>
</tr>
<tr>
<td style="text-align:right;">
19
</td>
<td style="text-align:left;">
$125,000-149,999
</td>
<td style="text-align:right;">
323
</td>
<td style="text-align:right;">
0.043
</td>
</tr>
<tr>
<td style="text-align:right;">
20
</td>
<td style="text-align:left;">
$150,000-174,999
</td>
<td style="text-align:right;">
366
</td>
<td style="text-align:right;">
0.049
</td>
</tr>
<tr>
<td style="text-align:right;">
21
</td>
<td style="text-align:left;">
$175,000-249,999
</td>
<td style="text-align:right;">
374
</td>
<td style="text-align:right;">
0.050
</td>
</tr>
<tr>
<td style="text-align:right;">
22
</td>
<td style="text-align:left;">
$250,000 or more
</td>
<td style="text-align:right;">
405
</td>
<td style="text-align:right;">
0.054
</td>
</tr>
</tbody>
</table>
<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Income7
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
Under $20k
</td>
<td style="text-align:right;">
1076
</td>
<td style="text-align:right;">
0.144
</td>
</tr>
<tr>
<td style="text-align:left;">
$20-40k
</td>
<td style="text-align:right;">
1051
</td>
<td style="text-align:right;">
0.141
</td>
</tr>
<tr>
<td style="text-align:left;">
$40-60k
</td>
<td style="text-align:right;">
984
</td>
<td style="text-align:right;">
0.132
</td>
</tr>
<tr>
<td style="text-align:left;">
$60-80k
</td>
<td style="text-align:right;">
920
</td>
<td style="text-align:right;">
0.123
</td>
</tr>
<tr>
<td style="text-align:left;">
$80-100k
</td>
<td style="text-align:right;">
674
</td>
<td style="text-align:right;">
0.090
</td>
</tr>
<tr>
<td style="text-align:left;">
$100-125k
</td>
<td style="text-align:right;">
763
</td>
<td style="text-align:right;">
0.102
</td>
</tr>
<tr>
<td style="text-align:left;">
$125k or more
</td>
<td style="text-align:right;">
1468
</td>
<td style="text-align:right;">
0.197
</td>
</tr>
<tr>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
517
</td>
<td style="text-align:right;">
0.069
</td>
</tr>
</tbody>
</table>

Variables used: V201617x

## CampaignInterest

PRE: HOW INTERESTED IN FOLLOWING CAMPAIGNS

Some people don’t pay much attention to political campaigns. How about
you? Would you say that you have been very much interested, somewhat
interested or not much interested in the political campaigns so far this
year?

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201006
</th>
<th style="text-align:left;">
CampaignInterest
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Very much interested
</td>
<td style="text-align:right;">
3940
</td>
<td style="text-align:right;">
0.529
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
Somewhat interested
</td>
<td style="text-align:right;">
2569
</td>
<td style="text-align:right;">
0.345
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
Not much interested
</td>
<td style="text-align:right;">
943
</td>
<td style="text-align:right;">
0.127
</td>
</tr>
</tbody>
</table>

Variables used: V201006

## TrustGovernment

PRE: HOW OFTEN TRUST GOVERNMENT IN WASHINGTON TO DO WHAT IS RIGHT
\[REVISED\]

How often can you trust the federal government in Washington to do what
is right?

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201233
</th>
<th style="text-align:left;">
TrustGovernment
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
26
</td>
<td style="text-align:right;">
0.003
</td>
</tr>
<tr>
<td style="text-align:right;">
-8
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Always
</td>
<td style="text-align:right;">
80
</td>
<td style="text-align:right;">
0.011
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
Most of the time
</td>
<td style="text-align:right;">
1016
</td>
<td style="text-align:right;">
0.136
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
About half the time
</td>
<td style="text-align:right;">
2313
</td>
<td style="text-align:right;">
0.310
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
Some of the time
</td>
<td style="text-align:right;">
3313
</td>
<td style="text-align:right;">
0.445
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
Never
</td>
<td style="text-align:right;">
702
</td>
<td style="text-align:right;">
0.094
</td>
</tr>
</tbody>
</table>

Variables used: V201233

## TrustPeople

PRE: HOW OFTEN CAN PEOPLE BE TRUSTED

Generally speaking, how often can you trust other people?

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
Label
</th>
<th style="text-align:left;">
TrustPeople
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
0.002
</td>
</tr>
<tr>
<td style="text-align:right;">
-8
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Always
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
0.006
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
Most of the time
</td>
<td style="text-align:right;">
3511
</td>
<td style="text-align:right;">
0.471
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
About half the time
</td>
<td style="text-align:right;">
2020
</td>
<td style="text-align:right;">
0.271
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
Some of the time
</td>
<td style="text-align:right;">
1597
</td>
<td style="text-align:right;">
0.214
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
Never
</td>
<td style="text-align:right;">
264
</td>
<td style="text-align:right;">
0.035
</td>
</tr>
</tbody>
</table>

Variables used: V201237

## VotedPres2016

PRE: DID R VOTE FOR PRESIDENT IN 2016

Four years ago, in 2016, Hillary Clinton ran on the Democratic ticket
against Donald Trump for the Republicans. Do you remember for sure
whether or not you voted in that election?

*Revised:* Four years ago, in 2016, Hillary Clinton ran on the
Democratic ticket against Donald Trump for the Republicans. We talk to
many people who tell us they did not vote. And we talk to a few people
who tell us they did vote, who really did not. We can tell they did not
vote by checking with official government records. What about you? If we
check the official government voter records, will they show that you
voted in the 2016 presidential election, or that you did not vote in
that election?

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201101
</th>
<th style="text-align:right;">
V201102
</th>
<th style="text-align:left;">
VotedPres2016
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
13
</td>
<td style="text-align:right;">
0.002
</td>
</tr>
<tr>
<td style="text-align:right;">
-8
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
6
</td>
<td style="text-align:right;">
0.001
</td>
</tr>
<tr>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
-8
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:right;">
3030
</td>
<td style="text-align:right;">
0.407
</td>
</tr>
<tr>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:right;">
743
</td>
<td style="text-align:right;">
0.100
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:right;">
2780
</td>
<td style="text-align:right;">
0.373
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:right;">
879
</td>
<td style="text-align:right;">
0.118
</td>
</tr>
</tbody>
</table>

Variables used: V201101, V201102

## VotedPres2016_selection

PRE: RECALL OF LAST (2016) PRESIDENTIAL VOTE CHOICE

Which one did you vote for?

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201103
</th>
<th style="text-align:left;">
VotedPres2016_selection
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
0.006
</td>
</tr>
<tr>
<td style="text-align:right;">
-8
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
-1
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1643
</td>
<td style="text-align:right;">
0.220
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Clinton
</td>
<td style="text-align:right;">
2911
</td>
<td style="text-align:right;">
0.391
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
Trump
</td>
<td style="text-align:right;">
2466
</td>
<td style="text-align:right;">
0.331
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
390
</td>
<td style="text-align:right;">
0.052
</td>
</tr>
</tbody>
</table>

Variables used: V201103

## VotedPres2020

PRE-POST: SUMMARY: VOTER TURNOUT IN 2020

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V202109x
</th>
<th style="text-align:left;">
VotedPres2020
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
<td style="text-align:right;">
-2
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
0.001
</td>
</tr>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:right;">
1039
</td>
<td style="text-align:right;">
0.139
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:right;">
6407
</td>
<td style="text-align:right;">
0.860
</td>
</tr>
</tbody>
</table>

Variables used: V202109x

## VotedPres2020_selection

POST: FOR WHOM DID R VOTE FOR PRESIDENT

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V202073
</th>
<th style="text-align:left;">
VotedPres2020_selection
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
<td style="text-align:right;">
-9
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
0.007
</td>
</tr>
<tr>
<td style="text-align:right;">
-6
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
0.001
</td>
</tr>
<tr>
<td style="text-align:right;">
-1
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1497
</td>
<td style="text-align:right;">
0.201
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Biden
</td>
<td style="text-align:right;">
3267
</td>
<td style="text-align:right;">
0.438
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
Trump
</td>
<td style="text-align:right;">
2462
</td>
<td style="text-align:right;">
0.330
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
69
</td>
<td style="text-align:right;">
0.009
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
23
</td>
<td style="text-align:right;">
0.003
</td>
</tr>
<tr>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
0.008
</td>
</tr>
<tr>
<td style="text-align:right;">
7
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
8
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
11
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
12
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
16
</td>
<td style="text-align:right;">
0.002
</td>
</tr>
</tbody>
</table>

Variables used: V202073

## EarlyVote2020 / VotedPres2020

PRE: SUMMARY: REGISTRATION AND EARLY VOTE STATUS

<table class=" lightable-minimal" style="font-family: &quot;Trebuchet MS&quot;, verdana, sans-serif; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
V201025x
</th>
<th style="text-align:right;">
V202109x
</th>
<th style="text-align:left;">
VotedPres2020
</th>
<th style="text-align:left;">
EarlyVote2020
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
<td style="text-align:right;">
-4
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
-2
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
301
</td>
<td style="text-align:right;">
0.040
</td>
</tr>
<tr>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
0.005
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
-2
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
180
</td>
<td style="text-align:right;">
0.024
</td>
</tr>
<tr>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:right;">
109
</td>
<td style="text-align:right;">
0.015
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
-2
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0.000
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
558
</td>
<td style="text-align:right;">
0.075
</td>
</tr>
<tr>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:right;">
5891
</td>
<td style="text-align:right;">
0.790
</td>
</tr>
<tr>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:right;">
371
</td>
<td style="text-align:right;">
0.050
</td>
</tr>
</tbody>
</table>

Variables used: V201025x, V202109x
