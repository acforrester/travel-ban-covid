/*******************************************************************************
	
	Program:  12_combine_plots.do
	Authors:  AC Forrester
	
	Purpose:	Combine the graphs for the main results and permutation tests
				and save them as .png (.eps is recommended, though)
	
*******************************************************************************/
	
	* Main specs, 1 thru 4
	grc1leg	${plots}plot_synth_main_spec_01.gph ///
			${plots}plot_synth_main_spec_02.gph /// 
			${plots}plot_synth_main_spec_03.gph ///
			${plots}plot_synth_main_spec_04.gph, iscale(0.6)
	
	* save plot
	gr export ${plots}synth_01_04_main.png, replace as(png)
	
	* Main specs, 5 thru 8	
	grc1leg	${plots}plot_synth_main_spec_05.gph ///
			${plots}plot_synth_main_spec_06.gph /// 
			${plots}plot_synth_main_spec_07.gph ///
			${plots}plot_synth_main_spec_08.gph, iscale(0.6)
			
	* save plot
	gr export ${plots}synth_05_08_main.png, replace as(png)
	
	* Permutation tests, 1 thru 4
	grc1leg	${plots}plot_synth_robust_spec_01.gph ///
			${plots}plot_synth_robust_spec_02.gph /// 
			${plots}plot_synth_robust_spec_03.gph ///
			${plots}plot_synth_robust_spec_04.gph, iscale(0.6)
	
	* save plot
	gr export ${plots}synth_01_04_robust.png, replace as(png)
			
	* Permutation tests, 5 thru 8	
	grc1leg	${plots}plot_synth_robust_spec_05.gph ///
			${plots}plot_synth_robust_spec_06.gph /// 
			${plots}plot_synth_robust_spec_07.gph ///
			${plots}plot_synth_robust_spec_08.gph, iscale(0.6)
	
	* save plot
	gr export ${plots}synth_05_08_robust.png, replace as(png)
		
********************************************************************************

* End of file
