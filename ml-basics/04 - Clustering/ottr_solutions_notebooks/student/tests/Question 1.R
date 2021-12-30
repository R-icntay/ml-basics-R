test = list(
  name = "Question 1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      success_message = "Great start! You have successfully created a recipe specification that will: Normalize all predictors and convert them into **two** principal components.",
      failure_message = "Almost there! Let's take a look at this again. Ensure your recipe specifies that all predictors should be normalized and then converted into two principal components.",
      code = {
        suppressPackageStartupMessages({
          library(testthat)
          library(ottr)
        })

        ## Test ##
        test_that('recipe specification is correct', {
          expect_output(invisible(print(pca_rec)), "Recipe\n\nInputs:\n\n\nOperations:\n\nCentering and scaling for all_predictors()\nNo PCA components were extracted.", fixed = TRUE)
          
        })
      }
    )
  )
)