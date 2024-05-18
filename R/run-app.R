#' Launch NFL Shiny App
#'
#' @description
#' This function will launch a shiny app that shows some preliminary facts about NFL. This is an interactive web application, you can play around with the plot. For example, you can change the filter provided in the application, and the plot will change accordingly.
#'
#' @example
#' run_app()
#'
#' @export
run_app <- function() {
  app_dir <- system.file("nfl-app", package = "nflexplore")
  shiny::runApp(app_dir, display.mode = "normal")
}
