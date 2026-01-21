library(tidyverse)
library(nycflights13)

glimpse(flights)

flights_airline <- flights |> 
  left_join(airlines, by = c("carrier" = "carrier")) |> 
  left_join(planes, by = c("tailnum" = "tailnum")) |> 
  left_join(weather)
