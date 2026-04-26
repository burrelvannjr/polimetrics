# US States Information for Merging

This data set provides common names and abbreviations for U.S. states to
enable merging with various data sets.

## Usage

``` r
US_States
```

## Format

A data frame with 50 observations and 8 variables.

|  |  |
|----|----|
|  | state_name |
| proper state name | state_abbv |
| abbreviated state name | state_name_cap |
| capitalized state name | state_name_cap_nominate |
| capitalized state name, shortened (as in DW-NOMINATE data) | state_fips |
| state FIPS | fullgeoid |
| Twelve-digit GEOID identifier for each state observation (as a character string) | neighbors_state_name |
| character string of neighboring states' state_name (separated by ',') for each state observation | neighbors_fullgeoid |
| character string of neighboring states' fullgeoid's (separated by ',') for each state observation |  |
