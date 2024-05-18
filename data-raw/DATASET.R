## code to prepare `attendance` and `games` dataset goes here

attendance_url <- 'https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-04/attendance.csv'
games_url <- 'https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-04/games.csv'


attendance <- readr::read_csv(attendance_url) %>%
                dplyr::mutate(full_name = paste(team, team_name, sep = " "))
usethis::use_data(attendance, overwrite = TRUE)


games <- readr::read_csv(games_url) %>%
  dplyr::mutate(home_win = if_else(winner == home_team, 1, 0),
                away_win = if_else(winner == away_team, 1, 0))
usethis::use_data(games, overwrite = TRUE)
