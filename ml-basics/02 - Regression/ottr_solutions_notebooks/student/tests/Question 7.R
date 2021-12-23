test = list(
  name = "Question 7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      success_message = "",
      failure_message = "",
      code = {
        ## Test ##
        test_that('recipe specification is correct', {
          expect_output(print(rf_workflow), "== Workflow ====================================================================\nPreprocessor: Recipe\nModel: rand_forest()\n\n-- Preprocessor ----------------------------------------------------------------\n3 Recipe Steps\n\n* step_rm()\n* step_mutate()\n* step_normalize()\n\n-- Model -----------------------------------------------------------------------\nRandom Forest Model Specification (regression)\n\nComputational engine: randomForest \n", fixed = TRUE)
          
          
        })
      }
    )
  )
)