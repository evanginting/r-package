#' Winning Trend of an NFL team
#'
#' @description
#' This function takes the name of an NFL team and plots the winning trend of that team.
#' The trend will span across 2000 until 2019, with separate lines indicating wins at home and away.
#'
#'
#' @source See the full team list [here](https://www.nfl.com/teams/).
#'
#' @param team NFL team name
#'
#' @return A trendline of home and away win over the years for the inputted NFL Team.
#'
#'
#' @examples
#' # Example Input
#' "Arizona Cardinals"
#'
#' # Plot the winning trend
#' win_trend("Arizona Cardinals")
#'
#'
#' @export
win_trend <- function(team) {
  home_away <- games %>%
    dplyr::group_by(year, home_team) %>%
    dplyr::summarise(home = sum(home_win),
                     away = sum(away_win)) %>%
    tidyr::pivot_longer(c("home","away"),
                        names_to = "home_aways",
                        values_to = "win_number") %>%
    dplyr::filter(home_team == team)

  ggplot2::ggplot(home_away, ggplot2::aes(x = year, y = win_number, color = home_aways)) +
    ggplot2::geom_line(size = 1) +
    ggplot2::scale_color_manual(values=c('aquamarine4','darkturquoise')) +
    ggplot2::geom_point(size = 3, color = "navy") +
    ggplot2::ggtitle(paste("Total Win Home/Away for", team, "between 2000 - 2019")) +
    ggplot2::labs(x = "Year",
                  y = "Total Win Home/Away",
                  color = "Home/Away") +
    ggplot2::theme_classic() +
    ggplot2::theme(plot.title = ggplot2::element_text(hjust=0.5, face = "bold"))
}
