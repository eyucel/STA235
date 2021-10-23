install.packages(c("tidyverse",
                   "mosaic",
                   "car",
                   "ggfortify",
                   "ISLR"
                   ), type="binary")

library(tidyverse)
library(mosaic)
library(car)
library(ggfortify)
library(ISLR)

data(state)
state <- data.frame(state.x77 ) %>% rownames_to_column("state") %>% mutate(Income = Income/1000)
rm(state.x77, state.abb, state.area, state.division, state.name, state.region, state.center)

diamonds <- ggplot2::diamonds
data(Auto)
Auto$C1 = 1*(Auto$cylinders<=4)
Auto$C2 = 1*(Auto$cylinders==5 | Auto$cylinders==6 | Auto$cylinders==7)
Auto$C3 = 1*(Auto$cylinders>=8)

con <- url("https://github.com/eyucel/STA235/raw/main/ts.RData")
load(con)
rm(con)
