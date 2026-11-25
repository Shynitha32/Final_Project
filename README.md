# DATA 550 Final Project

This project analyzes Youth Risk Behavior Surveillance System (YRBSS) data to describe mental health, suicide-related behaviors, and selected substance-use indicators among U.S. high school students. The project also examines changes in persistent sadness or hopelessness among female and male students from 2019 through 2023.

## Project Structure

- `data/` contains the data used for the analysis.
- `table/` contains the code and output for Table 1.
  - `table/code/make_table1.R` creates Table 1.
  - `table/output/table_one.rds` contains the saved Table 1 output.
  - `table/report_table.Rmd` creates the table portion of the report.
- `figure/` contains the code and output for Figure 1.
  - `figure/code/make_figure.R` creates Figure 1.
  - `figure/output/figure.png` contains the saved figure.
  - `figure/report_figure.Rmd` creates the Figure 1.
- `report_combined.Rmd` combines the table and figure reports using child documents.
- `render_combined_report.R` renders the final combined report.
- [child](https://bookdown.org/yihui/rmarkdown-cookbook/child-document.html) documents are used to stitch together a final report
