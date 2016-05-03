#' @rdname is_matching_fixed
#' @export
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
assert_all_are_matching_fixed <- function(x, pattern, 
                                          na_ignore = FALSE,
                                          severity = getOption("assertive.severity", "stop")){
  .xname <- get_name_in_parent(x)                                             
  .fixedname <- get_name_in_parent(pattern)
  msg <- sprintf(
    "%s does not match %s", 
    .xname, .fixedname
  )
  assert_engine(
    is_matching_fixed, 
    x,
    pattern,
    .xname     = .xname,
    msg        = msg, 
    what       = 'all',
    na_ignore  = na_ignore,
    severity   = severity
  )
}

#' @rdname is_matching_fixed
#' @export
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
assert_any_are_matching_fixed <- function(x, pattern, 
                                          na_ignore = FALSE,
                                          severity = getOption("assertive.severity", "stop")){
  .xname <- get_name_in_parent(x)                                             
  .fixedname <- get_name_in_parent(pattern)
  msg <- sprintf(
    "%s does not match %s", 
    .xname, .fixedname
  )
  assert_engine(
    is_matching_fixed, 
    x,
    pattern,
    .xname     = .xname,
    msg        = msg, 
    what       = 'any',
    na_ignore  = na_ignore,
    severity   = severity
  )
}

#' @rdname is_matching_fixed
#' @export
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
assert_none_are_matching_fixed <- function(x, pattern, 
                                           na_ignore = FALSE,
                                           severity = getOption("assertive.severity", "stop")){
  .xname <- get_name_in_parent(x)                                             
  .fixedname <- get_name_in_parent(pattern)
  msg <- sprintf(
    "%s matches %s", 
    .xname, .fixedname
  )
  assert_engine(
    is_not_matching_fixed, 
    x,
    pattern,
    .xname     = .xname,
    msg        = msg, 
    what       = 'all',
    na_ignore  = na_ignore,
    severity   = severity
  )
}

#' @rdname is_matching_fixed
#' @export
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
assert_all_are_matching_regex <- function(x, pattern, 
                                          na_ignore = FALSE,
                                          severity = getOption("assertive.severity", "stop")){
  .xname <- get_name_in_parent(x)                                             
  .fixedname <- get_name_in_parent(pattern)
  msg <- sprintf(
    "%s does not match %s", 
    .xname, .fixedname
  )
  assert_engine(
    is_matching_regex, 
    x,
    pattern,
    .xname     = .xname,
    msg        = msg, 
    what       = 'all',
    na_ignore  = na_ignore,
    severity   = severity
  )
}

#' @rdname is_matching_fixed
#' @export
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
assert_any_are_matching_regex <- function(x, pattern, 
                                          na_ignore = FALSE,
                                          severity = getOption("assertive.severity", "stop")){
  .xname <- get_name_in_parent(x)                                             
  .fixedname <- get_name_in_parent(pattern)
  msg <- sprintf(
    "%s does not match %s", 
    .xname, .fixedname
  )
  assert_engine(
    is_matching_regex, 
    x,
    pattern,
    .xname     = .xname,
    msg        = msg, 
    what       = 'any',
    na_ignore  = na_ignore,
    severity   = severity
  )
}

#' @rdname is_matching_fixed
#' @export
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
assert_none_are_matching_regex <- function(x, pattern, 
                                          na_ignore = FALSE,
                                          severity = getOption("assertive.severity", "stop")){
  .xname <- get_name_in_parent(x)                                             
  .fixedname <- get_name_in_parent(pattern)
  msg <- sprintf(
    "%s does not match %s", 
    .xname, .fixedname
  )
  assert_engine(
    is_not_matching_regex, 
    x,
    pattern,
    .xname     = .xname,
    msg        = msg, 
    what       = 'all',
    na_ignore  = na_ignore,
    severity   = severity
  )
}

