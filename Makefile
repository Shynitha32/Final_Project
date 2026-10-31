report_combined.html: render_combined_report.R \
	report_combined.Rmd table/output/table_one.rds figure/output/figure.png
	Rscript render_combined_report.R
	
table/output/table_one.rds: table/code/make_table1.R data/data.rds
	Rscript table/code/make_table1.R

figure/output/figure.png: figure/code/make_figure.R data/data.rds
	Rscript figure/code/make_figure.R