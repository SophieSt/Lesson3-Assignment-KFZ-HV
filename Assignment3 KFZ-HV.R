# Team: Kraftfahrzeug-Haftpflichtversicherung
# Authors: Felten, Bettina; Stuhler, Sophie C.
# Date: 11-01-2017

# Assignment on Lesson 3

# This file is meant to provide a function which checks a given year on whether it is/was a leap year.
# A leap year is by definition a year, divisible by 4,
# not divisible by 100 except for years divisible by 400.

is.leap = function (year) {
  # this function will check if the given year is/was a leap year
  leap = FALSE
  try_num = try(is.numeric(year), silent=TRUE)  # check for type of year, years are given in integer format
  if (class(try_num) == 'try-error') {
    return('year must be of type numeric')   # return a message, if year is not numeric
  } else {
    if ((year % 4) == 0) {
    leap = TRUE
    } else if ((year % 100) == 0) {
    leap = FALSE
    } else if ((year % 400) == 0) {
    leap = TRUE
  return leap
  }
}
