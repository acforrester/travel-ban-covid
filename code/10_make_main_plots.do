/*******************************************************************************
	
	Program:  	10_make_main_plots.do
	Authors:  	AC Forrester
	
	Purpose: 	Make main synth path plots for specifications 1 thru 8.
	
*******************************************************************************/

/*******************************************************************************
	
	Spec 1: path plot
	
*******************************************************************************/

* open data
use "${output}spec_01_plot", clear

* make the plot
#delim ;

twoway 	(line _Y_synthetic _time, lcolor(gs10) lpattern(dash))
		(line _Y_treated _time, lcolor(black)),
	legend(
		order(2 "Real US" 1 "Synthetic US")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 1")
	ytitle("COVID-19 Cases")
	xtitle("Days since Jan. 22")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 50 57)
	xline(12, lpattern(dash))	
	yline(0, lpattern(dash));
	
#delim cr	

* save
gr save ${plots}plot_synth_main_spec_01.gph, replace

/*******************************************************************************
	
	Spec 2: path plot
	
*******************************************************************************/

* open data
use "${output}spec_02_plot", clear

* make the plot
#delim ;

twoway 	(line _Y_synthetic _time, lcolor(gs10) lpattern(dash))
		(line _Y_treated _time, lcolor(black)),
	legend(
		order(2 "Real US" 1 "Synthetic US")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 2")
	ytitle("COVID-19 Cases")
	xtitle("Days since Jan. 22")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 50 57)
	xline(26, lpattern(dash))	
	yline(0, lpattern(dash));
	
#delim cr	

* save
gr save ${plots}plot_synth_main_spec_02.gph, replace

/*******************************************************************************
	
	Spec 3: path plot
	
*******************************************************************************/

* open data
use "${output}spec_03_plot", clear

* make the plot
#delim ;

twoway 	(line _Y_synthetic _time, lcolor(gs10) lpattern(dash))
		(line _Y_treated _time, lcolor(black)),
	legend(
		order(2 "Real US" 1 "Synthetic US")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 3")
	ytitle("COVID-19 Cases")
	xtitle("Days since 1st case")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 44)
	xline(12, lpattern(dash))	
	yline(0, lpattern(dash))	
		;
	
#delim cr	

* save
gr save ${plots}plot_synth_main_spec_03.gph, replace

/*******************************************************************************
	
	Spec 4: path plot
	
*******************************************************************************/

* open data
use "${output}spec_04_plot", clear

* make the plot
#delim ;

twoway 	(line _Y_synthetic _time, lcolor(gs10) lpattern(dash))
		(line _Y_treated _time, lcolor(black)),
		legend(
			order(2 "Real US" 1 "Synthetic US")
			bmargin(0)
			ring(0)
			pos(11)
			col(1)
			)
		title("Specification 4")
		ytitle("COVID-19 Cases")
		xtitle("Days since Jan. 22")
		ylabel(, format("%06.0fc") labsize(small))
		xlabel(0 10 20 30 40 44)
		xline(26, lpattern(dash))	
		yline(0, lpattern(dash));
		
	#delim cr	

	* save
	gr save ${plots}plot_synth_main_spec_04.gph, replace

/*******************************************************************************
	
	Spec 5: path plot
	
*******************************************************************************/

* open data
use "${output}spec_05_plot", clear

* make the plot
#delim ;

twoway 	(line _Y_synthetic _time, lcolor(gs10) lpattern(dash))
		(line _Y_treated _time, lcolor(black)),
		legend(
			order(2 "Real US" 1 "Synthetic US")
			bmargin(0)
			ring(0)
			pos(11)
			col(1)
			)
		title("Specification 5")
		ytitle("COVID-19 Cases")
		xtitle("Days since Jan. 22")
		ylabel(, format("%06.0fc") labsize(small))
		xlabel(0 10 20 30 40 50 57)
		xline(12, lpattern(dash))	
		yline(0, lpattern(dash));
		
	#delim cr	

	* save
	gr save ${plots}plot_synth_main_spec_05.gph, replace

/*******************************************************************************
	
	Spec 6: path plot
	
*******************************************************************************/

* open data
use "${output}spec_06_plot", clear

* make the plot
#delim ;

twoway 	(line _Y_synthetic _time, lcolor(gs10) lpattern(dash))
		(line _Y_treated _time, lcolor(black)),
		legend(
			order(2 "Real US" 1 "Synthetic US")
			bmargin(0)
			ring(0)
			pos(11)
			col(1)
			)
		title("Specification 6")
		ytitle("COVID-19 Cases")
		xtitle("Days since 1st case")
		ylabel(, format("%06.0fc") labsize(small))
		xlabel(0 10 20 30 40 50 57)
		xline(26, lpattern(dash))	
		yline(0, lpattern(dash));
		
	#delim cr	

	* save
	gr save ${plots}plot_synth_main_spec_06.gph, replace
	
/*******************************************************************************
	
	Spec 7: path plot
	
*******************************************************************************/

* open data
use "${output}spec_07_plot", clear

* make the plot
#delim ;

twoway 	(line _Y_synthetic _time, lcolor(gs10) lpattern(dash))
		(line _Y_treated _time, lcolor(black)),
		legend(
			order(2 "Real US" 1 "Synthetic US")
			bmargin(0)
			ring(0)
			pos(11)
			col(1)
			)
		title("Specification 7")
		ytitle("COVID-19 Cases")
		xtitle("Days since 1st case")
		ylabel(, format("%06.0fc") labsize(small))
		xlabel(0 10 20 30 40 44)
		xline(12, lpattern(dash))	
		yline(0, lpattern(dash));
		
	#delim cr	

	* save
	gr save ${plots}plot_synth_main_spec_07.gph, replace
	
/*******************************************************************************
	
	Spec 8: path plot
	
*******************************************************************************/

* open data
use "${output}spec_08_plot", clear

* make the plot
#delim ;

twoway 	(line _Y_synthetic _time, lcolor(gs10) lpattern(dash))
		(line _Y_treated _time, lcolor(black)),
		legend(
			order(2 "Real US" 1 "Synthetic US")
			bmargin(0)
			ring(0)
			pos(11)
			col(1)
			)
		title("Specification 8")
		ytitle("COVID-19 Cases")
		xtitle("Days since 1st case")
		ylabel(, format("%06.0fc") labsize(small))
		xlabel(0 10 20 30 40 44)
		xline(26, lpattern(dash))	
		yline(0, lpattern(dash));
		
	#delim cr	

	* save
	gr save ${plots}plot_synth_main_spec_08.gph, replace

*******************************************************************************

* End of file
