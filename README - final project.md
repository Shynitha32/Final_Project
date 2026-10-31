# Final Project Description

The HIV report has been broken into two subprojects.

- `table/` contains all code and output related to the Descriptive Analysis (Table One)
	- `table/code/make_table1.R` produces Table 1
		- table 1 output should be saved to `table/output/`
  -	`table/report_table.Rmd` reads in output from `table/output/` and creates the report for the descriptive analysis
- `figure/` contains all code and output related to Data Visualization (Table One)
	- `figure/code/make_figure.R` produces Figure 1
    - figure 1 output should be saved to `figure/output/`
  -	`figure/report_figure.Rmd` reads in output from `figure/output/` and creates the report for data visualization

Table One and Figure One are combined in `combined_report.Rmd`.

- [child](https://bookdown.org/yihui/rmarkdown-cookbook/child-document.html) documents are used to stitch together a final report

`render_combined_report.R` is used for rendering the combined report from the command line