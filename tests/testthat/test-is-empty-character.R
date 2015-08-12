# TODO: tests for is_empty_character, is_non_empty_character,
# is_non_missing_nor_empty_character

test_that(
  "test.is_missing_or_empty_character.a_character_vector.returns_true_when_string_is_missing_or_empty", 
  {
    x <- c(missing = NA_character_, empty = "", non_empty = "a", space = " ", 
           not_missing1 = "NA", not_missing2 = "<NA>")
    expected <- c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE)
    expect_equal(
      strip_attributes(actual <- is_missing_or_empty_character(x)), 
      expected
    )
    expect_equal(names(actual), unname(x))
    expect_equal(
      cause(actual),
      noquote(rep.int(c("", "nonempty"), c(2, 4)))
    )
    expect_equal(
      strip_attributes(actual <- is_not_missing_nor_empty_character(x)), 
      !expected
    )
    expect_equal(names(actual), unname(x))
    expect_equal(
      cause(actual),
      noquote(rep.int(c("missing", "empty", ""), c(1, 1, 4)))
    )
  }
)

test_that("test.is_a_non_empty_string.empty_character.returns_false", {
  expect_false(is_a_non_empty_string(character()))
})

test_that("test.is_a_non_empty_string.empty_string.returns_false", {
  expect_false(is_a_non_empty_string(""))
})

test_that("test.is_a_non_empty_string.na_character_.returns_true", {
  expect_true(is_a_non_empty_string(NA_character_))
})

test_that("test.is_a_non_empty_string.non_empty_string.returns_true", {
  expect_true(is_a_non_empty_string("foo"))
})

test_that("test.is_an_empty_string.empty_character.returns_false", {
  expect_false(is_an_empty_string(character()))
})

test_that("test.is_an_empty_string.empty_string.returns_true", {
  expect_true(is_an_empty_string(""))
})

test_that("test.is_an_empty_string.na_character_.returns_false", {
  expect_false(is_an_empty_string(NA_character_))
})

test_that("test.is_an_empty_string.non_empty_string.returns_false", {
  expect_false(is_an_empty_string("foo"))
})

