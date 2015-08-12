library(testthat)
library(devtools)
library(assertive.strings)

with_envvar(
  c(LANG = "en_US"),
  test_check("assertive.strings")
)
