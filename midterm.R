install.packages(c("tidyverse",
                   "mosaic",
                   "car",
                   "ggfortify",
                   "ISLR"
                   ), type="win.binary")

library(tidyverse)
library(mosaic)
library(car)
library(ggfortify)
library(ISLR)

data(state)
state <- data.frame(state.x77 ) %>% rownames_to_column("state") %>% mutate(Income = Income/10000)
rm(state.x77, state.abb, state.area, state.division, state.name, state.region, state.center)

data(diamonds)
data(Auto)
Auto$C1 = (Auto$cylinders<=4)
Auto$C2 = (Auto$cylinders==5 | Auto$cylinders==6 | Auto$cylinders==7)
Auto$C3 = (Auto$cylinders>=8)

