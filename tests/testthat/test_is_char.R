context("Detecting characters from factor")

test_that("is_char checks that the number of unique values in a factor equals its length", {
  w <- factor(c('Black', 'Green', 'White'))
  x <- factor(c('Tea', 'Tea', 'Coffee'))
  y <- factor(c('a', 'b', 'c'))
  z <- factor(c(1, 2, 1, 2))

  expect_true(is_char(w))
  expect_false(is_char(x))
  expect_true(is_char(y))
  expect_false(is_char(z))
})
