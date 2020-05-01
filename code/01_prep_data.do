/*******************************************************************************
	
	Program:  01_prep_data.do
	Authors:  AC Forrester
	
	Purpose:	Prepare two datasets for analysis consisting of one with time 
				expressed as the days since Jan 22, 2020 and a second with time
				expressed as days since the first confirmed case of COVID-19.
				Datasets are names as follows:
				
				`output/synth_data_since_22.dta`
				`output/synth_data_since_case.dta`  
	
*******************************************************************************/

/*******************************************************************************
	
	Days since 01.22.2020
	
*******************************************************************************/

* open data
use "covid19_merged.dta", clear

* drop if over 57 days
drop if days > 57

* set as panel data
tsset un_code days

* save cleaned data
save "${output}synth_data_since_22", replace

/*******************************************************************************
	
	Days since 1st confirmed case
	
*******************************************************************************/

* open data
use "covid19_merged.dta", clear

* reorder event_time
replace event_time = event_time + 1

* drop if over 44 event_time
drop if event_time > 44

*drop if under 1 event_time
drop if event_time < 1

* manual edits
drop if un_code==40 | un_code==372 | un_code==756 | un_code==578 | un_code==528

* set as panel data
tsset un_code event_time

* save cleaned data
save "${output}synth_data_since_case", clear
	
********************************************************************************

* End of file
