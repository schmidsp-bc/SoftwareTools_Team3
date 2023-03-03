Our analysis firm was tasked with an assignment from a prominent chain
of liquor stores in the state of Iowa. Through our work with this firm,
we were asked to conduct an analysis of liquor sales to determine
whether it would be a smarter business decision to invest in stock of
high-end or low-end liquor in the firm’s stores. We used sales data from
the firm combined with socioeconomic data from the American Community
Survey to determine if income is in any way related to liquor sales. Our
theory is that if high-income communities make up a larger portion of
the liquor sales, the firm should stock more high-end liquor brands to
appeal too that clientele. If low-income communities consumer more
liquor, the firm should invest in the low-end liquor brands. In order to
have more direction for this decision, we have decided to answer the
following questions:

-   Do geographies with higher median income consume more alcohol in
    total?
-   Does it change if we look at per-capita sales?
-   Does the result vary among liquor categories?

As economists, we will look at the correlation between the income of the
state of Iowa and the total sales of liquor in dollars. Based on the
correlation between sales and income dynamics, we will make a policy
recommendation for the firm regarding which class of liquor they should
stock. This decision will also have a benefit to the community as the
products that are sold will be more tailored to the income demographic
of the area. This should increase the quality of living and allow for
the business to prosper no matter which demographic is highly
correlated.

#### Data Summary

To answer our research question and provide our recommendation, we
utilized two datasets. First, we used a dataset on liquor sales in Iowa,
which included variables on sales in both dollars and volume across
liquor categories. The dataset is typically used for market research and
analysis to gain insight into consumer behavior, preferences, and
trends. The second dataset we utilized came from the American Community
Survey \[ACS\] and include demographic and socioeconomic variables for
regions across the state of Iowa, including racial variables, education
indicators, and median income. Both datasets were measured across three
different geographic metrics: counties, cities, and zipcodes. We merged
these two datasets across each geographic metric, resulting in three
data frames that included liquor sales and demographic data for Iowa
counties, cities, and zipcodes. The goal of the inclusion of demographic
and economic data was to provide a more comprehensive analysis of the
factors that may influence alcohol sales.

By using the demographic and economic data as independent variables and
the sales data as dependent, we can view and analyze the relationship
between the socioeconomic factors and liquor consumption. In this
particular case, we are looking for a correlation between income levels
and alcohol sales across the different geographic metrics.

Descriptive statistics can be used to summarize the data and identify
patterns or trends in liquor sales. We use measures of central tendency
(e.g., mean, median) and measures of variables (e.g., sales, geographic
range, and revenue) to provide a general understanding of the data set
and identify any potential outliers or significant trends.

    ## 
    ## Iowa Cities Dataset
    ## ==========================================================
    ## Statistic      N      Mean     St. Dev.    Min     Max    
    ## ----------------------------------------------------------
    ## high.school  4,312   91.081      5.496    0.000  100.000  
    ## bachelor     4,312   19.500     10.613    0.000   81.400  
    ## unemployment 4,308   4.509       3.333    0.000  100.000  
    ## income       4,277 30,466.100  6,349.521  6,563   70,625  
    ## population   4,318 5,313.189  16,131.830    0    212,859  
    ## pop.white    4,318 4,715.165  13,285.700    0    164,184  
    ## pop.black    4,318  229.168    1,462.378    0     23,469  
    ## pop.indian   4,318   16.874     87.773      0     1,373   
    ## pop.asian    4,318  143.828     782.095     0     11,722  
    ## pop.hawai    4,318   5.113      28.130      0      338    
    ## pop.other    4,318   82.574     391.759     0     5,109   
    ## pop.multi    4,318  120.468     499.010     0     7,199   
    ## sale.dollars 3,753 70,330.350 381,167.500   1   12,225,234
    ## sale.volume  3,753 4,828.950  25,017.810    0    771,338  
    ## ----------------------------------------------------------

    ## 
    ## Iowa Counties Dataset
    ## ============================================================
    ## Statistic     N     Mean       St. Dev.     Min      Max    
    ## ------------------------------------------------------------
    ## high.school  981   91.110        3.066     78.200   96.300  
    ## bachelor     981   20.772        6.969     11.700   52.400  
    ## unemployment 981    4.265        1.366     1.800    8.400   
    ## income       981 29,982.580    3,220.157   18,959   43,120  
    ## population   981 31,538.630   55,948.790   3,822   459,159  
    ## pop.white    981 28,663.990   47,936.280   3,720   390,415  
    ## pop.black    981  1,049.855    3,625.512     0      29,390  
    ## pop.indian   981   101.107      243.811      0      1,570   
    ## pop.asian    981   677.483     2,258.544     0      18,813  
    ## pop.hawai    981   24.643       65.198       0       366    
    ## pop.other    981   398.238      940.070      0      6,735   
    ## pop.multi    981   623.316     1,489.692     34     12,163  
    ## sale.dollars 990 266,616.000 1,063,977.000   24   20,496,221
    ## sale.volume  990 18,306.090   69,391.760     4    1,288,859 
    ## ------------------------------------------------------------

    ## 
    ## Iowa Zipcodes Dataset
    ## ==========================================================
    ## Statistic      N      Mean     St. Dev.    Min      Max   
    ## ----------------------------------------------------------
    ## zipcode      4,661 51,227.100   918.249   50,001  56,168  
    ## high.school  4,632   91.827      4.895    0.000   100.000 
    ## bachelor     4,632   21.800     10.917    0.000   78.700  
    ## unemployment 4,632   4.138       3.116    0.000   66.700  
    ## income       4,622 31,782.910  6,238.955  2,978   62,005  
    ## population   4,634 6,015.081   8,573.885    0     43,930  
    ## pop.white    4,634 5,426.468   7,488.676    0     40,956  
    ## pop.black    4,634  219.398     632.460     0      6,321  
    ## pop.indian   4,634   17.634     50.310      0      1,033  
    ## pop.asian    4,634  141.235     414.214     0      3,732  
    ## pop.hawai    4,634   5.035      23.811      0       325   
    ## pop.other    4,634   81.526     255.581     0      3,687  
    ## pop.multi    4,634  123.784     237.047     0      1,345  
    ## sale.dollars 4,150 63,602.360 204,219.400   1    2,886,165
    ## sale.volume  4,150 4,367.002  13,426.330    0     185,421 
    ## ----------------------------------------------------------

We provided descriptive statistics for the three data frames that
resulted from the merging of the data. One point to note is the
difference in the number of observations between the three data frames.
Since we are looking at three different geographic metrics, there are
differences in the number of observations of the three groups.

One of the limitations of this dataset for our research is that it is a
general view of liquor sales across the whole state and does not provide
information on where the sales are occurring. Since we are focused on a
particular chain of liquor stores, using the data may not provide the
most applicable and accurate results. The relationship between
socioeconomic factors and alcohol sales may vary depending on the
location of the store. Therefore, it is important to acknowledge and
consider this limitations of the data when conducting the analysis. We
should also attempt to collect additional data, such as store location
information and sales from this particular chain, to improve the
accuracy and ablicability of our analysis and recommendation.

#### Data Analytics

To determine our policy recommendation, we created a series of
visualizations of the data. We analyzed each data set independently and
then merged the data sets to answer our research questions.

We first looked at the Iowa Liquor Sales data. Across each geographic
metric, we created map visualizations that show the total dollar sales
of liquor. We also looked into the areas with the top and bottom dollar
sales. Since our research parameters specified to look across
geographies, we included analysis of all geographic metrics despite
showing similar results in each.

![](county_sales_dynamics.png)

The above visualization displays dynamics of sales across the county
metric. The map shows that the majority of counties have a similar
amount of sales with a few outliers - notably, the counties that
represent the top and bottom sellers.

![](City_sales_dynamics.png)

There appears to be more variance in sales across the city geographic
level than the county level. Between the two graphs, there is expected
overlap with top selling cities laying within top selling counties.
Notably, the top selling county contains the top selling capital city,
Des Moines.

![](Zipcode_map.png)

The total sales by zipcodes are shown in the map above. This view gives
a more detailed view of the sale dynamics across the state of Iowa. One
noteworthy point from this map is the small geographic area that covers
the top selling region of the state, Des Moines. One recommendation for
the liquor store firm would be to target the Des Moines market if not
already doing so.

Within the liquor sales data, we were also interested in the dynamics of
sales between the different liquor categories.
![](Category_sales_dynamics.png) The top two selling liquors, whisky and
vodka, account for over half of all the sales across the state. This
makes these two liquors especially important to the analysis. The
ranking of category sales in dollars and volume are identical except for
the reversal of gin and brandy between the two. Gin comprises less of
the total sales in dollars than it does of total sales in volume, which
shows that it is likely a cheaper liquor.

Since we used the income data from the American Community Survey, we
analyzed income across the geographic metrics.

![](county_income_dynamics.png)

The map of median income by county creates a nice visualization to
compare to the sales map above. The highest and lowest income counties
do not have any overlap with the top and bottom selling counties, which
could be indicative that we will not find any relationship with which to
base our policy recommendation.

![](City_income_dynamics.png)

Similar to the county dynamics, there is no overlap between the high and
low income cities with the top and bottom selling cities.

We also wanted to explore if there are any factors that impact the
median income and would therefore influence our analysis. Specifically,
we looked into if there is a correlation between the unemployment rate
and median income. The theory behind this was that if there is a higher
unemployment rate in low-income areas, this could falsely show that
lower incomes is related to lower sales. Instead, the real relationship
could be between sales and unemployment rate. This would be logical,
since a higher unemployment rate could mean that people do not want to
spend money on non-necessities like alcohol.

![](Final_files/figure-markdown_strict/Umemployment_Income-1.png)

For simplicity, we focused on the county level for this examination.
This plot shows what we predicted, which is that higher unemployment
rates correlate with lower median incomes. If our analysis indicates
that there are lower alcohol sales in lower-income regions, this could
be a possible explanation to explore.

To determine our recommendation for the liquor store, we looked at the
correlation between income and sales. This was done with the goal of
determining if high or low median incomes are correlated with greater
sales. To have a thorough analysis, we looked across different
geographic metrics.

![](Final_files/figure-markdown_strict/County_total-1.png)

Based on the smoothed line on this scatterplot, there appears to be a
slight correlation with increase liquor sales at high and low median
incomes. However, there confidence intervals of the smooth line widens
at these indicates, indicating that the fit of this line is likely not
significant. Therefore, we cannot determine that there is a relationship
between these variables from this model alone.

![](Final_files/figure-markdown_strict/City_total-1.png)

Similarly, on the city geographic level, there does not appear to be any
significant relationship between median income and alcohol sales. There
is a slight upward curve towards lower incomes, which could support that
there is a slight correlation between lower median incomes and increased
liquor sales, which is supported by the county graph.

![](Final_files/figure-markdown_strict/Zipcode_total-1.png)

The zipcode plot reaffirms that there could be correlation between lower
incomes and liquor sales, although this graph has an additional downward
curve and large confidence intervals.

From these plots, we conclude that there is potential evidence of a
slight relationship between lower median incomes and increased liquor
sales. However, we want to gather more evidence to support this and
analyize the additional sections of our research question.

Accounting for population gives a more accurate view of the link between
liquor sales and income, since differences in population could be
changing or masking any effects.

![](Final_files/figure-markdown_strict/unnamed-chunk-1-1.png)

The above chart shows the linear relationship between population and
liquor sales, which highlights the need to control for this. To do so,
we found the dollar sales of liquor per-capita across each geographic
metric. This will allow us to refine our earlier results and give the
best possible recommendation.

![](Final_files/figure-markdown_strict/unnamed-chunk-2-1.png)

At the county level, controlling for population removes the slight
upward curve at the lower income range. Compared to the previous graph
of total sales versus median income for counties, this chart has less
variance in the best fit line. Aside from the high-income outlier, there
appears to be no relationship between income and sales.

![](Final_files/figure-markdown_strict/unnamed-chunk-3-1.png)

At the city level, the relationship between per-capita sales and income
mirrors the relationship between total sales and income. This plot
reinforces the link between lower-income and increased liquor sales.

![](Final_files/figure-markdown_strict/unnamed-chunk-4-1.png)

Similarly, the same chart at the zipcode geographic level mirrors the
total sales chart and supports that the relationship exists.

To complete our analysis, we wanted to see of this relationship is
present or more pronounced among the different liquor categories. For
simplicity, we looked only at the county geographic level.

![](Category_sales_income.png)

The chart containing all categories, while very busy, does not indicate
that any one category shows any significant relationship with income.
For the top selling liquors, whisky and vodka, we included individual
charts. These charts mirror the total sales graphs and do not indicate
that either of the liquors are consumed differently across median
incomes.

Overall, our analysis shows that low-income groups purchase more alcohol
both in total and per-capita. However, the relationship does not hold
true across all geographic levels and, if it exists, is very slight.
Since it is the only evidence of any relationship we have found, we will
use it to inform our policy recommendation, but it should be held with a
bit of skepticism.

An worthy excursion from this analysis would be to narrow down our
research to regions that are directly served by this liquor store firm.
If we had data on where this firm has store locations, we could narrow
down to only those areas and better represent the relationship between
their sales and clientele. This would also be improved if we had data on
this firm’s sale in particular and not sales across the entire state.
With this data, we could form a better recommendation based solely on
this firm’s unique scenario.

To create our visualizations for this analysis, we used both R and
Tableau software. Both of these programs have advantages and challenges.
The advantage of using the R software is that it is easy to analyze the
data without visualizations, such as with the descriptive statistics
provided in our data summary. Additionally, the R software has more
analysis power that allowed us to create a better statistical
examination of the data. For example, we were able to easily add the
smoothed mean lines to our plots, which is difficult in Tableau. The
disadvantage to R is that it has a bigger learning curve than Tableau,
since it requires actual coding. It is also very easy to make simple
mistakes that stop the code from running completely, especially as
beginners.

The advantage of using Tableau software is that we were able to create a
larger variety of visualizations that are not possible or our above our
skill level in R. For instance, since we are looking at geographic
metrics, it was intuitive to include map visualizations, which would not
be possible if only using R software. An additional benefit of Tableau
is that it is very easy to make visualizations aesthetically pleasing
compared to R. For example, to assign colors to the bars on a bar graph
in Tableau, we simply looked through the various color palettes. In R,
we would have had to code to manually assign each color to the different
bars. The disadvantage of Tableau is that it is difficult to work with
the data statistically.

### Conclusion

Through the research we conducted utilizing this data, we are able to
conclude that overall, there is no significant relationship between
income and total liquor sales. There may be a slight relationship
between lower income and total liquor sales, as is shown in in the
visualization of liquor sales versus income at the city and zipcode
geographic metrics. We found that this relationship exists with both
total sales and per-capita sales. We also found that separating by
liquor category does not show any different patterns. However, these
results are based on the curve of the smoothed means line, which has a
wide confidence interval, indicating that we should be skeptical of
these results.

The unavailability of data about the sales and locations of our decision
maker’s liquor store chain limits the results of this data. If we could
narrow down our research to include only regions that the chain serves
and look at their specific sales, we would be able to create a better
model based on their specific clientele. Additionally, if we had
information on the price of liquor being sold, we would be able to make
a better recommendation. If we knew how much is being spent on high-end
or low-end liquor in each area, we could better formulate a
recommendation.

There are many other areas of future research that would align with this
report. We could look into other factors that impact liquor sales, such
as education metrics. We could also recreate this research across
different states to see if our results hold up or are changed. Finally,
for simplicity, we could narrow our focus down to one geographic area
and control for other factors. If we created a linear model from this
data that used liquor sales as the dependent variable and income as the
key explanatory variable, we could include the other demographic factors
and liquor category as controls. This would allow us to quantify the
relationship between the two variables, instead of simply speculating
based on visualizations.

### Policy Recommendation

The decision maker from the Iowa liquor store chain is facing a decision
of whether to invest in additional stock of high-end or low-end liquor.
We were tasked with analyzing the sales of liquor across the state to
determine if income plays a role. If low-income areas purchase more
alcohol, then we would recommend stocking more low-end liquor to appeal
to that clientele. Conversely, if high-income areas purchase more
alcohol, we would recommend stocking more high-end liquor to appeal to
that base.

Overall, we believe that there is no trend to indicate how to stock the
shelves of the liquor stores; across all geographic metrics, there was
very little pattern to indicate that either income group purchases
significantly more alcohol. There is a slight indication that low-income
regions purchase marginally more alcohol, but it should be noted that
this trend lies with an large confidence interval and that there is room
for error. Therefore, our recommendation is that the liquor store may
see slightly better sales if they increase their stock of low-end liquor
due to this slight relationship, but that investing in a significant
amount of this stock may not provide any real benefits.

If the chain decides to follow this recommendation and slightly
increases stock of low-end liquor, the short term effect may be higher
sales in low-income regions. The long term effect of this could be that
the firm will open more stores in these regions and shift to serve a
specific client-base of low-income consumers instead of all income
groups. Alternatively, if are model did present a relationship that does
not exist, there may be no short term effects of this decision,
resulting in no long term changes. Since we recommend only slightly
increasing the stock of low-end liquor, the biggest risk is losing out
on that investment if the liquor does not sell. The benefit of this
recommendation is that, if our analysis correctly identified the
relationship, the stock will sell well, which could indicate that the
firm should continue to invest in stocking more low-end alcohol to
continue serving that market and increase their profits.
