# US Counties Information for Merging

This data set provides common names and abbreviations for U.S. counties
to enable merging with various data sets.

## Usage

``` r
US_Counties
```

## Format

A data frame with 3106 observations and 11 variables.

|                                                                                                            |                         |
|------------------------------------------------------------------------------------------------------------|-------------------------|
|                                                                                                            | countystate             |
| proper county name and state name (separated by ':')                                                       | state_name              |
| proper state name                                                                                          | county_name             |
| proper county name                                                                                         | state_abbv              |
| abbreviated state name                                                                                     | state_name_cap          |
| capitalized state name                                                                                     | state_name_cap_nominate |
| capitalized state name, shortened (as in DW-NOMINATE data)                                                 | state_fips              |
| state FIPS                                                                                                 | county_fips             |
| county FIPS                                                                                                | fullgeoid               |
| Twelve-digit GEOID identifier for each county observation (as a character string)                          | neighbors_fullgeoid     |
| character string of neighboring counties' fullgeoid's (separated by ',') for each county observation       | neighbors_countystate   |
| character string of neighboring counties' countystate names (separated by ',') for each county observation |                         |
