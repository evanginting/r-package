
# nflexplore

<!-- badges: start -->
<!-- badges: end -->

This R package offers essential insights into the National Football League (NFL), providing access to game attendance and result datasets. Users can explore NFL statistics, visualize team winning trends, and launch an interactive Shiny App for in-depth analysis, making it a valuable tool for NFL enthusiasts and data enthusiasts alike. There is also additional function that will help you calculate the mean for each level of the categorical variable. 

In summary, here is what included in this R package:

**Datasets**

- `attendance` contains total attendance of NFL games per week and per team.
- `games` information about weekly games, providing details about the winning team and game performances.      

**Functions**

- `run_app` Launch NFL Shiny App.        
- `win_trend` Winning Trend of an NFL team.      
- `calculate_means` Calculate means for each level of a categorical variable in a numeric vector. 

## Installation

You can install the development version of nflexplore from [GitHub](https://github.com/ETC5523-2023/rpkg-evanginting) with:

``` r
# install the development version from GitHub
devtools::install_github("ETC5523-2023/rpkg-evanginting")
```

## Example

Some example where you can utilise this R Package:

``` r
library(nflexplore)
library(dplyr)

# Populating annual total attendance 
attendance %>%
    filter(week == 1) %>%
    group_by(year) %>%
    summarise(total = sum(total))
   
   
# Populating home/away win    
games %>%
    group_by(year, home_team) %>%
    summarise(home = sum(home_win),
              away = sum(away_win)) %>%
    pivot_longer(c("home","away"),
                 names_to = "home_aways",
                 values_to = "win_number")
                 
                 
# Launching NFL Shiny App
run_app()


# Getting winning trend of an NFL team
win_trend("Dallas Cowboys")
```

