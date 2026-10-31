here::i_am(
  ("figure/code/make_figure.R")
)

data <- readRDS(
  file = 
    here::here("data/data.rds")
)

library(tidyverse)
library(ggplot2)

figure_data <- data |>
  filter(
    Area == "United States",
    Demographics_Type == "Sex",
    Demographics_Value %in% c("Female", "Male"),
    str_detect(Question, "sad or hopeless")
  ) |>
  mutate(Percent = as.numeric(Percent))

ggplot(
  figure_data,
  aes(
    x = Year,
    y = Percent,
    color = Demographics_Value,
    group = Demographics_Value
  )
) +
  geom_line(linewidth = 1) +
  geom_point(size = 3) +
  labs(
    title = "Persistent Sadness or Hopelessness by Sex",
    x = "Year",
    y = "Percent of students (%)",
    color = "Sex"
  ) +
  theme_minimal()

ggsave(
  here::here("figure/output/figure.png"),
  device = "png"
)
