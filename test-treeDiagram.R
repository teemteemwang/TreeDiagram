test_that("An automatically generated tree diagram in user's working directory without returning any error messages", {
  result = treeDiagram()
  expect_equal(result$S, "Hello, World!") #zero error message and the whole generation process is non-stop
})
