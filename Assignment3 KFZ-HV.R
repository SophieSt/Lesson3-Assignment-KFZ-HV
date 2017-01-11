# Team: Kraftfahrzeug-Haftpflichtversicherung
# Authors: Felten, Bettina; Stuhler, Sophie C.
# Date: 11-01-2017

# Assignment on Lesson 3

# This file is meant to provide a function which checks a given year on whether it is/was a leap year.
# A leap year is by definition a year, divisible by 4,
# not divisible by 100 except for years divisible by 400.

is.leap = function (year) {
  try_num = try(is.numeric(year), silent=TRUE)  # check for type of year, years are given in integer format
  if (class(try_num) == 'try-error') {
    return('year must be of type numeric')   # return a message, if year is not numeric
  } else {
    
  }
}
