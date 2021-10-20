install.packages(c("tidyverse",
                   "mosaic",
                   "car",
                   "ggfortify"
                   ), type="win.binary")

library(tidyverse)
library(mosaic)
library(car)
library(ggfortify)

data(state)
state <- data.frame(state.x77 ) %>% rownames_to_column("state") %>% mutate(Income = Income/10000)
rm(state.x77, state.abb, state.area, state.division, state.name, state.region, state.center)

