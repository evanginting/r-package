test_that("calculate means by category works", {

  # Test case 1: Valid input with two categories
  numeric_data <- c(10, 15, 20, 25, 30, 35)
  category_data <- c("A", "B", "A", "B", "A", "B")
  expected_result <- c(20, 25)

  result <- calculate_means(numeric_data, category_data)
  expect_equal(result, expected_result)

  # Test case 2: Valid input with a single category
  numeric_data <- c(10, 15, 20, 25)
  category_data <- c("A", "A", "A", "A")
  expected_result <- 17.5

  result <- calculate_means(numeric_data, category_data)
  expect_equal(result, expected_result)

  # Test case 3: Invalid input with a non-numeric vector
  numeric_data <- c("a", "b", "c")
  category_data <- c("A", "B", "A")

  # Expect an error to be thrown
  expect_error(calculate_means(numeric_data, category_data), "Input error:")
})
