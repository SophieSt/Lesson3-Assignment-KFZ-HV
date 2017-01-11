# Team: Kraftfahrzeug-Haftpflichtversicherung
# Authors: Felten, Bettina; Stuhler, Sophie C.
# Date: 11-01-2017

# Assignment on Lesson 3

# This file is meant to provide a function which checks a given year on whether it is/was a leap year.
# A leap year is by definition a year, divisible by 4,
# not divisible by 100 except for years divisible by 400.



is.leap = function (year) {
  # this function will check if the given year is/was a leap year
  leap = FALSE   # general assumption year is not leap year, unless checked for it being so

  is.num = is.numeric(year)  # check for type of year, years are given in integer format

  if (!is.num) {   # return a message, if year is not numeric
    stop ('year must be of type numeric')
  } else if (year < 1582) {   # there were no leap years before 1582
    message = paste(year, 'is out of valid range')
    return (message)
  } else {
      if ((year %% 4) == 0) {
        leap = TRUE
      }
      if ((year %% 100) == 0) {
        leap = FALSE
      }
      if ((year %% 400) == 0) {
        leap = TRUE
      }
    }
  return (leap)
}

is.leap(1581)
