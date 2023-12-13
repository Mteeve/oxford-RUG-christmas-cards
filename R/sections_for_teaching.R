library(tidyverse)
library(ggforce)

# background (midnight sky)
s1 <- ggplot() +
  theme_void() +
  theme(plot.background = element_rect(fill = "midnightblue"))
s1
# snow on ground
s2 <- s1 +
  annotate(
    geom = "rect"
  )
# add snowflakes

# add snowman

# add eyes and buttons

# add sticks for arms

# add hat

# add nose

# add text