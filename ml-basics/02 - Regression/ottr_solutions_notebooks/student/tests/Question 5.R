test = list(
  name = "Question 5",
  cases = list(
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1.0,
      success_message = "Good job. You have correctly specified a recipe that will remove the `transaction_date` feature, transform `local_convenience_stores` feature into categorical (factor) and then center and scale all numeric predictors.",
      failure_message = "Almost there. Ensure your recipe specification will remove the `transaction_date` feature, transform `local_convenience_stores` feature into categorical (factor) and then center and scale all numeric predictors.",
      code = {
        ## Test ##
        test_that('recipe specification is correct', {
          expect_output(print(estate_recipe), "Recipe\n\nInputs:\n\n\nOperations:\n\nDelete terms transaction_date\nVariable mutation\nCentering and scaling for all_numeric_predictors()", fixed = TRUE)
          
          
        })
      }
    )
  )
)