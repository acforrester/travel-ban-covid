/*******************************************************************************
	
	Program:  	07_Spec_6_synth.do
	Authors:  	Alex Nowrasteh
				AC Forrester
	
	Purpose: 	6th Specification
	
	- outcome: per million
	- treatment date: 2/16
	- time: days since 01.22.2020
	
*******************************************************************************/
	
	* treatment period
	local tr_period = 26
	
	* treated unit
	local treated = 840
	
	* response variable
	local response confirmed_mill
	
	* control variables
	local controls un_migrant pop_density pct_oldpop pct_urban un_medage gdppc2011 abslat n_migrant_china n_connects
		
	* initialize temp file
	tempfile tmp
	
	* load dataset	
	use "${output}synth_data_since_22", clear
	
	* find SC unit
	synth `response' `controls',	trunit(`treated')        	///
									trperiod(`tr_period')    	///
									keep(${output}spec_06_plot)	///
									replace                 	///
									nested allopt 
	
	* V matrix
	matrix v_matrix = vecdiag(e(V_matrix))'
	
	* weights matrix
	matrix w_matrix = e(W_weights)
	
	* find SC unit and perform inference
	synth_runner `response' `controls', trunit(`treated')   	///
										trperiod(`tr_period')	///
										keep(`tmp')          	///
										gen_vars            	///
										nested allopt        	///
										replace
	
	* accumulate p-vals
	matrix a = e(pvals)'
	
	* open output 
	use `tmp', clear
	
	* post matrices
	svmat double w_matrix, name(W_matrix)
	svmat double v_matrix, name(V_matrix)
	svmat double a, name(pval)
	
	di as res "Unit weights" _newline
	li W_matrix1 W_matrix2 if !mi(W_matrix1), clean
	
	* placebos used
	di as res "N placebos used = " `=e(n_pl)'
	
	* RMSPE
	qui summ pre_rmspe if un_code == 840
	di as res "RMSPE = " `=r(mean)'
	
	* Avg post treatment p-val
	qui summ pval
	di as res "Avg. post-treatment {it: p}-val = " `=r(mean)'
	
	* save output results
	save ${output}synth_spec_06, replace
	
********************************************************************************

* End of file
