/*******************************************************************************
	
	Program: 	11_make_robust_plots.do
	Authors:	AC Forrester
	
	Purpose:	Make the permutation test plots for specificationms 1 thru 8.
	
*******************************************************************************/

/*******************************************************************************
	
	Spec 1: permutation tests
	
*******************************************************************************/

* open the synth data
use ${output}synth_spec_01, clear

* set as panel
tsset un_code days

* get UN codes
levelsof un_code if un_code < 840, local(un_codes)

* clear local
local plot

* accumulate plot statements
foreach i of local un_codes {
	local plot `plot' (tsline effect if un_code == `i', lcolor(gs12))
}

* treated plot
local plot `plot' (tsline effect if un_code == 840, lcolor(black))

* make the plot
#delim ;

twoway `plot',
	legend(
		order(12 "Real US" 1 "Placebo countries")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 1")
	ytitle("Gap in Cases")
	xtitle("Days since Jan. 22")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0(5)57)
	xline(12, lpattern(dash))	
	yline(0, lpattern(dash));
		
#delim cr

* save
gr save ${plots}plot_synth_robust_spec_01.gph, replace

/*******************************************************************************
	
	Spec 2: permutation tests
	
*******************************************************************************/

* open the synth data
use ${output}synth_spec_02, clear

* set as panel
tsset un_code days

* get UN codes
levelsof un_code if un_code < 840, local(un_codes)

* clear local
local plot

* accumulate plot statements
foreach i of local un_codes {
	local plot `plot' (tsline effect if un_code == `i', lcolor(gs12))
}

* treated plot
local plot `plot' (tsline effect if un_code == 840, lcolor(black))

di "`plot'"

* make the plot
#delim ;

twoway `plot',
	legend(
		order(13 "Real US" 1 "Placebo countries")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 2")
	ytitle("Gap in Cases")
	xtitle("Days since Jan. 22")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 50 57)
	xline(26, lpattern(dash))	
	yline(0, lpattern(dash));
		
#delim cr

* save
gr save ${plots}plot_synth_robust_spec_02.gph, replace

/*******************************************************************************
	
	Spec 3: permutation tests
	
*******************************************************************************/

* open the synth data
use ${output}synth_spec_03, clear

* set as panel
tsset un_code event_time

* get UN codes
levelsof un_code if un_code < 840, local(un_codes)

* clear local
local plot

* accumulate plot statements
foreach i of local un_codes {
	local plot `plot' (tsline effect if un_code == `i', lcolor(gs12))
}

* treated plot
local plot `plot' (tsline effect if un_code == 840, lcolor(black))

* make the plot
#delim ;

twoway `plot',
	legend(
		order(9 "Real US" 1 "Placebo countries")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 3")
	ytitle("Gap in Cases")
	xtitle("Days since first case")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 44)
	xline(12, lpattern(dash))	
	yline(0, lpattern(dash))	
		;
		
#delim cr

* save
gr save ${plots}plot_synth_robust_spec_03.gph, replace

/*******************************************************************************
	
	Spec 4: permutation tests
	
*******************************************************************************/

* open the synth data
use ${output}synth_spec_04, clear

* set as panel
tsset un_code event_time

* get UN codes
levelsof un_code if un_code < 840, local(un_codes)

* clear local
local plot

* accumulate plot statements
foreach i of local un_codes {
	local plot `plot' (tsline effect if un_code == `i', lcolor(gs12))
}

* treated plot
local plot `plot' (tsline effect if un_code == 840, lcolor(black))

* make the plot
#delim ;

twoway `plot',
	legend(
		order(8 "Real US" 1 "Placebo countries")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 4")
	ytitle("Gap in Cases")
	xtitle("Days since first case")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 44)
	xline(26, lpattern(dash))	
	yline(0, lpattern(dash))	
		;
		
#delim cr

* save
gr save ${plots}plot_synth_robust_spec_04.gph, replace

/*******************************************************************************
	
	Spec 5: permutation tests
	
*******************************************************************************/

* open the synth data
use ${output}synth_spec_05, clear

* set as panel
tsset un_code days

* get UN codes
levelsof un_code if un_code < 840, local(un_codes)

* clear local
local plot

* accumulate plot statements
foreach i of local un_codes {
	local plot `plot' (tsline effect if un_code == `i', lcolor(gs12))
}

* treated plot
local plot `plot' (tsline effect if un_code == 840, lcolor(black))

* make the plot
#delim ;

twoway `plot',
	legend(
		order(13 "Real US" 1 "Placebo countries")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 5")
	ytitle("Gap in COVID-19 cases per million")
	xtitle("Days since Jan. 22")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 50 57)
	xline(12, lpattern(dash))	
	yline(0, lpattern(dash))	
		;
		
#delim cr

* save
gr save ${plots}plot_synth_robust_spec_05.gph, replace


/*******************************************************************************
	
	Spec 6: permutation tests
	
*******************************************************************************/

* open the synth data
use ${output}synth_spec_06, clear

* set as panel
tsset un_code days

* get UN codes
levelsof un_code if un_code < 840, local(un_codes)

* clear local
local plot

* accumulate plot statements
foreach i of local un_codes {
	local plot `plot' (tsline effect if un_code == `i', lcolor(gs12))
}

* treated plot
local plot `plot' (tsline effect if un_code == 840, lcolor(black))

* make the plot
#delim ;

twoway `plot',
	legend(
		order(13 "Real US" 1 "Placebo countries")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 6")
	ytitle("Gap in COVID-19 cases per million")
	xtitle("Days since Jan. 22")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 50 57)
	xline(12, lpattern(dash))	
	yline(0, lpattern(dash))	
		;
		
#delim cr

* save
gr save ${plots}plot_synth_robust_spec_06.gph, replace

/*******************************************************************************
	
	Spec 7: permutation tests
	
*******************************************************************************/

* open the synth data
use ${output}synth_spec_07, clear

* set as panel
tsset un_code event_time

* get UN codes
levelsof un_code if un_code < 840, local(un_codes)

* clear local
local plot

* accumulate plot statements
foreach i of local un_codes {
	local plot `plot' (tsline effect if un_code == `i', lcolor(gs12))
}

* treated plot
local plot `plot' (tsline effect if un_code == 840, lcolor(black))

* make the plot
#delim ;

twoway `plot',
	legend(
		order(8 "Real US" 1 "Placebo countries")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 7")
	ytitle("Gap in COVID-19 cases per million")
	xtitle("Days since first case")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 44)
	xline(12, lpattern(dash))	
	yline(0, lpattern(dash))	
		;
		
#delim cr

* save
gr save ${plots}plot_synth_robust_spec_07.gph, replace

/*******************************************************************************
	
	Spec 8: permutation tests
	
*******************************************************************************/

* open the synth data
use ${output}synth_spec_08, clear

* set as panel
tsset un_code event_time

* get UN codes
levelsof un_code if un_code < 840, local(un_codes)

* clear local
local plot

* accumulate plot statements
foreach i of local un_codes {
	local plot `plot' (tsline effect if un_code == `i', lcolor(gs12))
}

* treated plot
local plot `plot' (tsline effect if un_code == 840, lcolor(black))

* make the plot
#delim ;

twoway `plot',
	legend(
		order(8 "Real US" 1 "Placebo countries")
		bmargin(0)
		ring(0)
		pos(11)
		col(1)
		)
	title("Specification 8")
	ytitle("Gap in COVID-19 cases per million")
	xtitle("Days since first case")
	ylabel(, format("%06.0fc") labsize(small))
	xlabel(0 10 20 30 40 44)
	xline(12, lpattern(dash))	
	yline(0, lpattern(dash))	
		;
		
#delim cr

* save
gr save ${plots}plot_synth_robust_spec_08.gph, replace
	
********************************************************************************

* End of file
