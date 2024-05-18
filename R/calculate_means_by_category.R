#' Calculate means for each level of a categorical variable in a numeric vector
#'
#' @description
#' This function takes a numeric vector and a categorical vector as input. It calculates
#' the mean for each level of the categorical variable and returns a named numeric vector
#' with the means.
#'
#' @param numeric_vector A numeric vector containing the data for which means are calculated.
#' @param categorical_vector A character vector containing the categorical variable.
#'
#' @return A named numeric vector with the means for each level of the categorical variable.
#'
#' @examples
#' # Example Data
#' numeric_data <- c(10, 15, 20, 25, 30, 35)
#' category_data <- c("A", "B", "A", "B", "A", "B")
#'
#'
#' # Calculate means for each category
#' calculate_means(numeric_data, category_data)
#'
#' @export
calculate_means <- function(numeric_vector, categorical_vector) {
  if (!is.numeric(numeric_vector) || !is.character(categorical_vector)) {
    stop("Input error: The first argument must be numeric, and the second argument must be character.")
  }

  data <- data.frame(numeric_vector, categorical_vector)
  result <- data %>%
    dplyr::group_by(categorical_vector) %>%
    dplyr::summarise(mean_value = mean(numeric_vector, na.rm = TRUE)) %>%
    dplyr::pull(mean_value)

  return(result)
}
