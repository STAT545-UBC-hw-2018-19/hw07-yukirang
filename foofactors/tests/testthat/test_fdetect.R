context("detect character factors")

test_that("fdetect detects factors", {
  x <- factor(c("1", "2", "3"))
  x_re <- factor(c("3", "2", "1"))
  y <- factor(c("1", "2", "3","3"))
  z <- 1
  expect_true(fdetect(x))
  expect_false(fdetect(y))
  expect_error(fdetect(z))
})
