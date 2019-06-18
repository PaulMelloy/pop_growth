install.packages("gapminder")
library(gapminder)
library(ggplot2)
library(dplyr)
library(gganimate)

head(gapminder)


p.1 <- gapminder %>%
ggplot(aes(y = pop, x = lifeExp, colour = country))+
   geom_point(alpha = 0.6)+
   scale_color_viridis_d() +
   labs(x = "Life Expectancy", y = "Population")

p.1 + transition_time(year)+
   labs(title = "Year: {frame_time}")
