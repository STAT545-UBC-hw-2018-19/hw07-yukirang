context("Reorder factors")

test_that("fbind binds factor (or character)", {
  x <- factor(c("4", "2", "3"))
  y <- factor(c(7, 9, 8))
  z <- data.frame(x,y)
  x_re <- c("4","3","2")
  y_re <- c(9,8,7)

  expect_identical(freorder(x))
  expect_identical(freorder(y))
  expect_error(fdetect(z))
})
