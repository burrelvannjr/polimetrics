#' US States Information for Merging
#'
#' This data set provides common names and abbreviations for U.S. states to enable merging with various data sets.
#'
#' @format A data frame with 50 observations and 8 variables.
#' \tabular{ll}{ \cr
#'  state_name \tab proper state name \cr
#'  state_abbv \tab abbreviated state name \cr
#'	state_name_cap \tab capitalized state name \cr
#'	state_name_cap_nominate \tab capitalized state name, shortened (as in DW-NOMINATE data) \cr
#'	state_fips \tab state FIPS \cr
#'	fullgeoid \tab Twelve-digit GEOID identifier for each state observation (as a character string) \cr
#'	neighbors_state_name \tab character string of neighboring states' state_name (separated by ',') for each state observation \cr
#'	neighbors_fullgeoid \tab character string of neighboring states' fullgeoid's (separated by ',') for each state observation \cr
#' }

#'
"US_States"
