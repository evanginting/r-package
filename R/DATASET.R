#' Attendance Dataset
#'
#' A dataset that contains total attendance of NFL games per week and per team. It spans across multiple years from 2000 until 2019.
#'
#' @source <https://github.com/rfordatascience/tidytuesday/tree/master/data/2020/2020-02-04>
#' @format Data frame with columns
#' \describe{
#' \item{team}{Team City}
#' \item{team_name}{Team name}
#' \item{year}{Season year}
#' \item{total}{Total attendance across 17 weeks (1 week = no game)}
#' \item{home}{Home attendance}
#' \item{away}{Away attendance}
#' \item{week}{Week number (1-17)}
#' \item{weekly_attendance}{Weekly attendance number}
#' \item{full_name}{Combination of `team` variable and `team_name` variable}
#' }
"attendance"


#' Games Dataset
#'
#' A dataset with information about weekly games, providing details about the winning team and game performances. It covers data from 2000 until 2019.
#'
#' @source <https://github.com/rfordatascience/tidytuesday/tree/master/data/2020/2020-02-04>
#' @format Data frame with columns
#' \describe{
#' \item{year}{season year, note that playoff games will still be in the previous season}
#' \item{week}{week number (1-17, plus playoffs) }
#' \item{home_team}{Home team}
#' \item{away_team}{Away team}
#' \item{winner}{Winning team}
#' \item{tie}{If a tie, the "losing" team as well}
#' \item{day}{Day of week}
#' \item{date}{Date minus year}
#' \item{time}{Time of game start}
#' \item{pts_win}{Points by winning team}
#' \item{pts_loss}{Points by losing team}
#' \item{yds_win}{Yards by winning team}
#' \item{turnovers_win}{Turnovers by winning team}
#' \item{yds_loss}{Yards by losing team}
#' \item{turnovers_loss}{Turnovers by losing team}
#' \item{home_team_name}{Home team name}
#' \item{home_team_city}{Home team city}
#' \item{away_team_name}{Away team name}
#' \item{away_team_city}{Away team city}
#' \item{home_win}{Identifier if it is a home win}
#' \item{away_win}{Identifier if it is an away win}
#' }
"games"
