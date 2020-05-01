/*******************************************************************************
	
	Program:  00_main_codes.do
	Authors:  Alex Nowrasteh
			  AC Forrester
	
	Purpose: Create synthetic control units for US travel ban and cases of
			 SARS-CoV-2, perform placebo-based inference tests, run robustness 
			 checks, and produce figures.
			 
*******************************************************************************/
	
	* set main directory
	if (c(username) == "aforrester"){
		cd "U:\projects\covid19-project\"
	}
	else if (c(username) == "anowrasteh") {
		cd "\\FS01.cato.int\USERS\anowrasteh\Desktop\MRAJ Coronavirus Paper\STATA\"
	} 
	else {
		di as error "can't identify user --- abort!"
	}
	
	* set stuff
	set more off
	set scheme s1mono
	
	* main directories
	gl build	build/
	gl merge	merge/
	gl table	tables/
	gl plots	figures/
	gl codes	code/
	
/*******************************************************************************

	Run main analysis codes

*******************************************************************************/
	

	
********************************************************************************

* End of file
