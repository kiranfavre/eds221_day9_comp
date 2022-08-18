#---------------------Practicing reprex-----------------#

### This is NOT a reprex!

library(tidyverse)
library(palmerpenguins)

penguins |>
  select(species, body_mass_g, flipper_length_mm, year) |> 
  filter(species == "Chinstrap") |> 
  str_to_lower(species) |> 
  group_by(island) |> 
  summarize(mean(body_mass_g, na.rm = TRUE),
            mean(flipper_length_mm, na.rm = TRUE))

### A REPREX
library(tidyverse)

warpbreaks |> 
  str_to_lower(wool)

#copy the example^ then type reprex() into the console will make it into a formatted reprex


#respond to other peoples reprex with soln (FIXING REPREX)
library(tidyverse)

warpbreaks |> 
  mutate(wool = str_to_lower(wool))



## Make a reprex with a synthesized data frame
library(tidyverse)

fries <- tibble::tribble(
  ~small, ~Large,
  "Cajun", "plain",
  "Straight", "curly"
)

fry_case <- fries |> 
  str_to_lower(Large)

