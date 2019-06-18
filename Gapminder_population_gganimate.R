install.packages("gapminder")
library(gapminder)
library(ggplot2)
library(dplyr)
library(gganimate)

head(gapminder)


p.1 <- gapminder %>%
ggplot(aes(y = pop, x = lifeExp,size = gdpPercap, colour = country))+
   geom_point(show.legend = FALSE,alpha = 0.6)+
   scale_color_viridis_d() +
   scale_size(range = c(2, 12)) +
   scale_y_log10() +
   labs(x = "Life Expectancy", y = "Population")

p.1 + facet_wrap(~continent)+
   transition_time(year)+
   labs(title = "Year: {frame_time}")+
   shadow_wake(wake_length = 0.1, alpha = FALSE)
