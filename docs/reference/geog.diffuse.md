# Calculating Geographical Diffusion

Calculating Geographical Diffusion

## Usage

``` r
geog.diffuse(df, id, neighbors, time, status, end = FALSE, keep = FALSE)
```

## Arguments

- df:

  data frame to read in. Data frame should include a variable that is a
  character list of each observation's neighbors.

- id:

  the grouping variable, usually states or counties

- neighbors:

  a variable that is a `character` list of each observation's neighbors.
  The elements of the character list of neighbors should be separated by
  commas.

- time:

  the time variable, at which observations are measured.

- status:

  binary, user-defined measure of the status of policy or event in a
  state in a given year. `0` equates to *policy has not yet occurred in
  the year, for the state*, `1` equates to *policy event has already
  been adopted in the year, for the state* – a value of `1` should exist
  for a state in the year it was adopted and every year thereafter). The
  example below relies on ERA ratification data from Soule and
  King (2006) \<doi:10.1086/499908\>, merged with ideology data from
  Berry et al. (1998) \<doi:10.2307/2991759\>, but the user should
  include the measure of adoption of their choice.

- end:

  logical (default set to `F`). When set to `end = T`, will calculate
  the percent of neighbors that had adopted policy by year-end.
  Otherwise, will calculate based on number of neighbors that had
  adopted the policy at year-start.

- keep:

  logical (default set to `F`). When set to `end = T`, will include
  additional variables (*number of neighbors* and *number of neighbors
  that had adopted the policy*) in the updated data frame.

## Value

This function updates the data frame with a new variable capturing the
geographical diffusion score.

## References

Berry, William D., Ringquist, Evan J., Fording, Richard C., and Hanson,
Russell L. (1998) 'Measuring Citizen and Government Ideology in the
American States, 1960-93.' *American Journal of Political Science*
42:327-348. [doi:10.2307/2991759](https://doi.org/10.2307/2991759) .  
Soule, Sarah A., and King, Brayden G. (2006) 'The Stages of the Policy
Process and the Equal Rights Amendment, 1972-1982.' *American Journal of
Sociology* 111:1871-1909.
[doi:10.1086/499908](https://doi.org/10.1086/499908) .  

This function calculates the percent (or proportion) of geographically
contiguous neighbors that have engaged in some *event* (e.g. policy
adoption) in a given year. This function can be applied to any unit of
analysis and time level for any type of event.

## Examples

``` r
data <- Ideology_ERA

geog.diffuse(data, state, neighbors, year, era_status)
```
