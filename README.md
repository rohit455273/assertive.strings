[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Is the package on CRAN?](http://www.r-pkg.org/badges/version/assertive.strings)](http://www.r-pkg.org/pkg/assertive.strings)
[![SemaphoreCI Build Status](https://semaphoreci.com/api/v1/projects/bb88f300-f875-4509-9b78-3c8d3c013eb1/635209/badge.svg)](https://semaphoreci.com/richierocks/assertive-strings)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/1ccr3q27ly97sdsu?svg=true)](https://ci.appveyor.com/project/richierocks/assertive-strings)
[![Research software impact](http://depsy.org/api/package/cran/assertive.strings/badge.svg)](http://depsy.org/package/r/assertive.strings)

# assertive.strings

A set of predicates and assertions for checking the properties of strings.  Most of the documentation is on the *[assertive](https://bitbucket.org/richierocks/assertive)* page.  End-users will usually want to use *assertive* directly.


### Installation

To install the stable version, type:

```{r}
install.packages("assertive.strings")
```

To install the development version, you first need the *devtools* package.

```{r}
install.packages("devtools")
```

Then you can install the *assertive.strings* package using

```{r}
library(devtools)
install_bitbucket("richierocks/assertive.strings")
```

### Predicates

`is_empty_character`, `is_non_empty_character`, `is_missing_or_empty_character`, and `is_non_missing_nor_empty_character` check for empty and missing (or not) character vectors.

`is_an_empty_string`, `is_a_non_empty_string`, `is_a_missing_or_empty_string`, and `is_a_non_missing_nor_empty_string` do the same, for single strings.

`is_numeric_string` checks for strings that contain numbers.

`is_single_character` checks for single characters.

`is_matching_fixed`, `is_matching_regex`, `is_not_matching_fixed`, and `is_not_matching_regex` all check whether a string matches a pattern or not.

### Assertions

Predicates that return a vector have two corresponding assertions.  For example,
`is_numeric_string` has `assert_all_are_numeric_strings` and `assert_any_are_numeric_strings`.

Predicates returning a single logical value have one corresponding assertion.
For example, `is_an_empty_string` has `assert_is_an_empty_string`.

### Utils

`character_to_list_of_integer_vectors` converts a character vector of numbers to a list of integer vectors.