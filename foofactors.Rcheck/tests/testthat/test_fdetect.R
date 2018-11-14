context("detect character factors")

test_that("fbind binds factor (or character)", {
  x <- factor(c("1", "2", "3"))
  y <- factor(c("1", "2", "3","3"))
  z <- factor(readdf(test.txt))

  expect_true(fdetect(x))
  expect_false(fdetect(y))
  expect_error(fdetect(z))
})
