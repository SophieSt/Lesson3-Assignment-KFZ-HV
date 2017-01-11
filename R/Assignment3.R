# This function checks for a leap year

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


