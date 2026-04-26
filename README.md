# `polimetrics`: R tools for political measures

<!-- badges: start -->

[![](https://www.r-pkg.org/badges/version/polimetrics?color=green)](https://cran.r-project.org/package=polimetrics)
[![](http://cranlogs.r-pkg.org/badges/grand-total/polimetrics?color=blue)](https://cran.r-project.org/package=polimetrics)
[![](http://cranlogs.r-pkg.org/badges/last-month/polimetrics?color=blue)](https://cran.r-project.org/package=polimetrics)

<!-- badges: end -->

## Overview


`polimetrics` is an R package that provides a collection of data and functions for common metrics used in political science research. The package focuses on two central concepts in the policy diffusion literature: **geographical diffusion** and **ideological distance**. It ships with curated datasets on U.S. state ideology and geographic structure, making it a self-contained toolkit for scholars studying how policies spread across states over time.

The methods implemented in `polimetrics` are derived from foundational work in the policy diffusion literature:

- Soule & King (2006) — *American Journal of Sociology* [doi:10.1086/499908](https://doi.org/10.1086/499908)
- Berry et al. (1998) — *American Journal of Political Science* [doi:10.2307/2991759](https://doi.org/10.2307/2991759)
- Cruz-Aceves & Mallinson (2019) — *State and Local Government Review* [doi:10.1177/0160323X20902818](https://doi.org/10.1177/0160323X20902818)
- Grossback et al. (2004) — *American Politics Research* [doi:10.1177/1532673X04263801](https://doi.org/10.1177/1532673X04263801)




## Installation

---

Install the released version from CRAN:

```r
install.packages("polimetrics")
```

Then load the package:

```r
library(polimetrics)
```



## Functions

---

### Policy Diffusion

These functions calculate the two primary metrics used in policy diffusion research. Both are flexible enough to accommodate any unit of analysis, time period, and policy adoption measure.

| Function | Description |
|---|---|
| `geog.diffuse()` | Calculates the proportion of geographically contiguous neighbors that have adopted a given policy in a given year — a measure of **geographical diffusion** |
| `ideo.dist()` | Calculates the **ideological distance** score between a state and prior policy adopters, based on the Grossback et al. (2004) method as clarified by Cruz-Aceves & Mallinson (2019) |




## Examples

---

### Geographical Diffusion

```r
data <- Ideology_ERA

geog.diffuse(data, state, neighbors, year, era_status)
```

This call appends a geographical diffusion score to the data frame, representing the proportion of each state's neighboring states that had already adopted the ERA in each year.

### Ideological Distance

```r
data <- Ideology_ERA

ideo.dist(data, state, s_ideo, year, era_ratified)
```

This call appends an ideological distance score to the data frame, capturing how ideologically distant each state was from prior ERA-adopting states in each year.




## Included Datasets

---

`polimetrics` ships with a suite of datasets designed to work directly with its functions and support replication of common policy diffusion analyses.

| Dataset | Description |
|---|---|
| `Ideology` | Fording's State Ideology Data — state- and citizen-level ideology scores for all U.S. states, 1960–2018 (3,050 observations, 4 variables). Source: [rcfording.com](https://rcfording.com/state-ideology-data/) |
| `Ideology_ERA` | Fording's State Ideology Data adapted with Equal Rights Amendment ratification status — includes a binary variable for ERA ratification as used in Soule & King (2006) (300 observations, 5 variables) |
| `State_Neighbors` | US State Neighbor List — a character-string list of contiguous neighboring states for each of the 50 U.S. states (50 observations, 2 variables) |
| `US_States` | US States Information for Merging — common state names and abbreviations to facilitate merging with external datasets (50 observations, 5 variables) |
| `US_Counties` | US Counties Information for Merging — county-level names and identifiers for merging with external datasets |





## Dependencies

---

`polimetrics` imports `dplyr` and `stats`, and also lists `MASS`, `car`, `formula.tools`, `ggplot2`, `gplots`, `graphics`, `purrr`, `rstatix`, `stringr`, and `tidyverse` among its dependencies.

