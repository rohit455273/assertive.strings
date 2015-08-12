# TODO: tests for is_single_character

test_that(
  "test.is_numeric_string.a_character_vector.returns_true_when_string_contains_a_number", 
  {
    x <- c("1", "-2.3e4", "Inf", "one", "NA")
    expected <- c(TRUE, TRUE, TRUE, FALSE, FALSE)
    expect_equal(
      strip_attributes(actual <- is_numeric_string(x)), 
      expected
    )
    expect_equal(names(actual), unname(x))
    expect_equal(
      cause(actual),
      noquote(rep.int(c("", "bad format"), c(3, 2)))
    )
  }
)

