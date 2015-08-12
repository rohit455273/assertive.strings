#' @rdname is_numeric_string
#' @export
assert_all_are_numeric_strings <- function(x, na_ignore = FALSE)
{                                                     
  msg <- gettextf(
    "%s is not a character vector of numbers.", 
    get_name_in_parent(x)
  )
  assert_engine(
    is_numeric_string, 
    x, 
    msg = msg, 
    na_ignore = na_ignore
  )
}

#' @rdname is_numeric_string
#' @export
assert_any_are_numeric_strings <- function(x, na_ignore = FALSE)
{                                                     
  msg <- gettextf(
    "%s is not a character vector of numbers.", 
    get_name_in_parent(x)
  )
  assert_engine(
    is_numeric_string, 
    x, 
    msg = msg, 
    what = "any", 
    na_ignore = na_ignore
  )         
}

#' @rdname is_single_character
#' @export
assert_all_are_single_characters <- function(x, na_ignore = FALSE)
{                                                     
  msg <- gettextf("%s are not all single characters.", get_name_in_parent(x))
  assert_engine(
    is_single_character, 
    x, 
    msg = msg, 
    na_ignore = na_ignore
  )
}

#' @rdname is_single_character
#' @export
assert_any_are_single_characters <- function(x, na_ignore = FALSE)
{                                                     
  msg <- gettextf("%s are all not single characters.", get_name_in_parent(x))
  assert_engine(
    is_single_character, 
    x, 
    msg = msg, 
    what = "any", 
    na_ignore = na_ignore
  )
}
