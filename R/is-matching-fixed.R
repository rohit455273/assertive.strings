#' Does x match a pattern?
#' @param x string
#' @param pattern pattern
#' @param na_ignore should NAs be ignored or not?
#' @param severity How severe should the consequences of the assertion be?  
#' @param .xname Not intended to be used directly.
#' @examples
#' is_matching_fixed('A_B', '_')
#' is_matching_regex('A-B', '[A-Z][^_][A-Z]')
#' is_not_matching_fixed('A-B', '_')
#' is_not_matching_regex('A-B', '[A-Z][_][A-Z]')
#' assert_all_are_matching_fixed(c('A_B', 'C_D'), '_')
#' assert_any_are_matching_fixed(c('A-B', 'C_D'), '_')
#' assert_all_are_not_matching_fixed(c('A-B', 'C-D'), '_')
#' assert_all_are_not_matching_fixed(c('A-B', 'C-D'), '_')
#' assert_all_are_matching_regex(c('A_B', 'C_D'), '[A-Z][_][A-Z]')
#' assert_any_are_matching_regex(c('A-B', 'C_D'), '[A-Z][_][A-Z]')
#' assert_all_are_not_matching_regex(c('A-B', 'C-D'), '[A-Z][_][A-Z]')
#' @author Aditya Bhagwat
#' @rdname is_matching_fixed
#' @importFrom stringi stri_detect_fixed
#' @importFrom assertive.base false get_name_in_parent
#' @export
is_matching_fixed <- function(x, pattern, 
                              .xname = get_name_in_parent(x))
{
  x <- coerce_to(x, "character", .xname)
  call_and_name(
    function(x)
    {
      ok <- stringi::stri_detect_fixed(x, pattern)
      set_cause(ok, gettextf("does not match '%s'", pattern))
    },
    x
  )
}

#' @rdname is_matching_fixed
#' @importFrom stringi stri_detect_fixed
#' @importFrom assertive.base false get_name_in_parent
#' @export
is_not_matching_fixed <- function(x, pattern, 
                              .xname = get_name_in_parent(x))
{
  x <- coerce_to(x, "character", .xname)
  call_and_name(
    function(x)
    {
      ok <- !stringi::stri_detect_fixed(x, pattern)
      set_cause(ok, gettextf("matches '%s'", pattern))
    },
    x
  )
}


#' @rdname is_matching_fixed
#' @importFrom stringi stri_detect_regex
#' @importFrom assertive.base false get_name_in_parent
#' @export
is_matching_regex <- function(x, pattern, 
                              .xname = get_name_in_parent(x))
{
  x <- coerce_to(x, "character", .xname)
  call_and_name(
    function(x)
    {
      ok <- stringi::stri_detect_regex(x, pattern)
      set_cause(ok, gettextf("does not match '%s'", pattern))
    },
    x
  )
}

#' @rdname is_matching_fixed
#' @importFrom stringi stri_detect_regex
#' @importFrom assertive.base false get_name_in_parent
#' @export
is_not_matching_regex <- function(x, pattern, 
                                  .xname = get_name_in_parent(x))
{
  x <- coerce_to(x, "character", .xname)
  call_and_name(
    function(x)
    {
      ok <- !stringi::stri_detect_regex(x, pattern)
      set_cause(ok, gettextf("matches '%s'", pattern))
    },
    x
  )
}