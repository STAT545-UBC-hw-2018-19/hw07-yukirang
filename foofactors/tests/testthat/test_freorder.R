context("Reorder factors")

test_that("freorder reorders factors in descendence", {
  x <- c("4", "2", "3")
  y <- c(7, 9, 8)
  z <- data.frame(x,y)
  x_re <- c("4","3","2")
  y_re <- c(9,8,7)
  expect_identical(freorder(factor(x),x_re))
  expect_identical(freorder(factor(y),y_re))
  expect_error(freorder(z))
})
