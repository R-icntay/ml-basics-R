test = list(
  name = "Question 5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      success_message = "Well done! You have successfully filtered the data to include observations whose Arrival Delay falls within the 1st and 90th quantiles.",
      failure_message = "Almost there! Ensure you have filtered the **df_flights** data to only include rows where the entry for **ArrDelay** column is greater than **ArrDelay_01pcntile** and less than **ArrDelay_90pcntile**",
      code = {
        ## Test ##
        test_that('there are no outliers', {
          expect_equal(sum(df_flights$ArrDelay < ArrDelay_01pcntile), 0)
          expect_equal(sum(df_flights$ArrDelay > ArrDelay_90pcntile), 0)
  
        })
      }
    )
  )
)