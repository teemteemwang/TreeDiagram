library(testthat)
library(tree)
context("tree_info")

# Prepare steps:
# 1) test for empty dataset
emptyDat <- data.frame()

# 2) test for decision tree for breast cancer dataset
# read in breast cancer data
data(cancer)
# make sure predictor variable is factored
cancer$Classification <- factor(cancer$Classification)
# create decision tree
t_cancer <- tree(Classification ~ ., data=cancer)

# start testing for
# test 1) empty data should return an error message
test_that("expecting error message for NULL(empty) input", {
  expect_error(tree_info(emptyDat),"argument is of length zero")
})

# test 2) first object returned from tree() function should give a data frame with dim of 11 rows by 7 columns
test_that("expecting an non-empty data frame", {
  result <- tree_info(t_cancer[[1]])
  expect_equal(dim(result),c(11,7))
})
