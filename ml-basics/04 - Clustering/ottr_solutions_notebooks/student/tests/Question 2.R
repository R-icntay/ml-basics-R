test = list(
  name = "Question 2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      success_message = "Fantatsic! You have successfully prepped a recipe and baked it to obtain the fitted PC transformation of our features.",
      failure_message = "Almost there! Let's take a look at this again. Ensure you call `prep()` which estimates the statistics required by PCA and apply them to our data using `bake(new_data = NULL)`.",
      code = {
        test_that('prep and bake results are correct', {
          expect_output(invisible(print(pca_estimates)), "Recipe\n\nInputs:\n\n\nTraining data contained 1000 data points and no missing data.\n\nOperations:\n\nCentering and scaling for A, B, C [trained]\nPCA extraction with A, B, C [trained]", fixed = TRUE)
          expect_equal(dim(features_2d), c(1000, 2))
          
          
        })
      }
    )
  )
)