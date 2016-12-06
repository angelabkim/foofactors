context("Reordering factors")

test_that("in_desc reorders factors in descending order", {
  x <- factor(c('Tea', 'Water', 'Coffee'))
  y <- factor(c('Water', 'Tea', 'Coffee'))
  z <- factor(c('Coffee', 'Tea', 'Water'))

  expect_identical(levels(in_desc(x)), levels(in_desc(y)))
  expect_identical(levels(in_desc(x)), levels(in_desc(z)))
  expect_identical(levels(in_desc(y)), levels(in_desc(z)))
})
