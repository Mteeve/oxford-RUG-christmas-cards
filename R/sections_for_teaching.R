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
    geom = "rect",
    xmin = 0,
    xmax = 1,
    ymin = 0,
    ymax = 0.2,
    fill = 'grey98',
    colour = 'grey98'
  ) +
  xlim(0, 1) +
  ylim(0, 1) +
  coord_fixed(expand = FALSE)

s2
# add snowflakes

set.seed(20231225)
n <- 100

snowflakes <- data.frame(x = runif(n),
                         y = runif(n))

s3 <- s2 +
  geom_point(data = snowflakes,
             mapping = aes(x = x, y = y),
             colour = 'white',
             shape = 8)
s3

# add snowman

# add eyes and buttons

# add sticks for arms

# add hat

# add nose

# add text