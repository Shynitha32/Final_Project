here::i_am(
  "render_combined_report.R"
)

library(rmarkdown)

rmarkdown::render(
  "report_combined.Rmd",
  knit_root_dir = here::here()
)
