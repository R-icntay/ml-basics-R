test = list(
  name = "Question 4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      success_message = "Excellent! Your model specification is looking great!",
      failure_message = "Let's have a look at this again. Ensure you have set your engine to **nnet** and the mode to **classification**.",
      code = {
        ## Test ##
        test_that('the model specification is correct', {
          expect_equal(mr_spec$mode, "classification")
          expect_equal(mr_spec$engine, "nnet")
          
          
        })
      }
    ),
    
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      success_message = "Your recipe is looking great!",
      failure_message = "Let's have a look at this again. Ensure you have set the **wine_variety** variable as the outcome and the rest of the variables as predictors, and a step that specifies that all the numeric predictors should be normalized.",
      code = {
        ## Test ##
        test_that('recipe specification is correct', {
          expect_output(invisible(print(wine_recipe)), "Recipe\n\nInputs:\n\n\nOperations:\n\nCentering and scaling for all_numeric_predictors()", fixed = TRUE)
          
          expect_equal(summary(wine_recipe) %>% filter(variable == "wine_variety") %>% pull(role), "outcome")
        })
      }
    ),
    
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      success_message = "Your workflow is all set up!",
      failure_message = " Let's have a look at this again. Perhaps we forgot to add something e.g add_model(...)?",
      code = {
        ## Test ##
        test_that('workflow specification is correct', {
          expect_output(print(mr_wflow), "== Workflow ====================================================================\nPreprocessor: Recipe\nModel: multinom_reg()\n\n-- Preprocessor ----------------------------------------------------------------\n1 Recipe Step\n\n* step_normalize()\n\n-- Model -----------------------------------------------------------------------\nMultinomial Regression Model Specification (classification)\n\n", fixed = TRUE)
          
        })
      }
    )
    
  )
)