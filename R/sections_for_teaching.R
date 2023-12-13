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
s4 <- s3 +
  geom_circle(data = data.frame(
    x0 = c(0.6, 0.6),
    y0 = c(0.3, 0.5),
    r = c(0.15, 0.1)
  ),
  mapping = aes(x0 = x0, y0 = y0, r = r),
  colour = "white",
  fill = "white")
s4

# add eyes and buttons
s4 +
  geom_point(
    data = data.frame(
      x = c(0.6, 0.6, 0.6),
      y = c(0.25, 0.3, 0.35)
    ),
    mapping = aes(x = x, y = y)
  )
# add sticks for arms

# add hat

# add nose

# add text