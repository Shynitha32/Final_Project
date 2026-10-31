here::i_am(
  ("table/code/make_table1.R")
)

data <- readRDS(
  file =
    here::here("data/data.rds")
)

library(gtsummary)
library(tidyverse)
library(knitr)

table_one <- data |>
  filter(
    Year == 2023,
    Area == "United States",
    Demographics_Type == "Total"
  ) |>
  mutate(
    Indicator = case_when(
      str_detect(Question, "sad or hopeless") ~ "Persistent sadness or hopelessness",
      str_detect(Question, "seriously consider") ~ "Seriously considered suicide",
      str_detect(Question, "make a plan") ~ "Made a suicide plan",
      str_detect(Question, "actually attempt") ~ "Attempted suicide",
      str_detect(Question, "mental health not good") ~ "Poor mental health",
      str_detect(Question, "prescription pain medicine") ~ "Prescription pain medicine misuse",
      str_detect(Question, "select illicit drugs") ~ "Illicit drug use"
    )
  ) |>
  select(Indicator, Percent)

knitr::kable(
  table_one,
  col.names = c("Mental Health Indicator", "Percent"),
  caption = "Table 1. Mental Health and Substance Use Indicators Among U.S. High School Students, 2023"
)

saveRDS(
  table_one,
  file =
    here::here("table/output/table_one.rds")
)